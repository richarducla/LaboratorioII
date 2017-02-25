<?php

use yii\helpers\Html;

/**
 * @var yii\web\View $this
 * @var app\models\Venta $model
 */

$this->title = 'Update Venta: ' . ' ' . $model->VentaID;
$this->params['breadcrumbs'][] = ['label' => 'Ventas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->VentaID, 'url' => ['view', 'id' => $model->VentaID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="venta-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
