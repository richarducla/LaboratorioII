<?php

use yii\helpers\Html;
use yii\helpers\HtmlPurifier;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use kartik\datecontrol\DateControl;
use yii\widgets\Pjax;
use kartik\grid\GridView;
use kartik\widgets\FileInput;
use kartik\widgets\RangeInput;

/**
 * @var yii\web\View $this
 * @var app\models\Anuncio $model
 * @var yii\widgets\ActiveForm $form
 * @var yii\data\ActiveDataProvider $dataProvider
 */
?>

<div class="col-sm-6 col-md-4">
      <div class="thumbnail">
        <?php
        $url = \Yii::getAlias('imagen/').$model->Imagen ;
        //echo "<img src=\"". $url . HtmlPurifier::process($model->foto)."\">" ;
        echo Html::img($url, ['alt'=>'Foto Clasificado']);
        ?>
        <div class="caption">
          <?php
        
          ?>
          <p><a href="#" class="btn btn-primary" role="button">Ver Detalles</a> <a href="#" class="btn btn-default" role="button">Agregar a Favoritos</a></p>
        </div>
      </div>
    </div>
