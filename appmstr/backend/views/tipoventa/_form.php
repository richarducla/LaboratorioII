<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use kartik\datecontrol\DateControl;

/**
 * @var yii\web\View $this
 * @var app\models\Tipoventa $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="tipoventa-form">

    <?php $form = ActiveForm::begin(['type' => ActiveForm::TYPE_HORIZONTAL]); echo Form::widget([

        'model' => $model,
        'form' => $form,
        'columns' => 1,
        'attributes' => [

            'ServiciopostventaID' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Serviciopostventa ID...']],

            'VentaID' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Venta ID...']],

            'Descripcion' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Descripcion...', 'maxlength' => 50]],

            'Estatus' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => 'Enter Estatus...', 'maxlength' => 50]],

        ]

    ]);

    echo Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'),
        ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']
    );
    ActiveForm::end(); ?>

</div>
