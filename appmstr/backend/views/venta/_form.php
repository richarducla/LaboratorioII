<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use kartik\datecontrol\DateControl;

/**
 * @var yii\web\View $this
 * @var app\models\Venta $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="venta-form">

    <?php $form = ActiveForm::begin(['type' => ActiveForm::TYPE_HORIZONTAL]); echo Form::widget([

        'model' => $model,
        'form' => $form,
        'columns' => 1,
        'attributes' => [

            'Fecha' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => DateControl::classname(),'options' => ['type' => DateControl::FORMAT_DATE]],

            'Hora' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => DateControl::classname(),'options' => ['type' => DateControl::FORMAT_TIME]],

            'Monto' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Monto...']],

            'AnuncioID' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Anuncio ID...']],

            'Descripcion' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Descripcion...', 'maxlength' => 50]],

            'Estatus' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Estatus...', 'maxlength' => 50]],

        ]

    ]);

    echo Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'),
        ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']
    );
    ActiveForm::end(); ?>

</div>
