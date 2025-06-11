<?php

class Horloges extends BaseController
{
    private $horlogesModel;

    public function __construct()
    {
        $this->horlogesModel = $this->model('HorlogesModel');
    }

    public function index()
    {
        /**
         * Je roept de method getAllHorloges aan van de horlogesModel class
         */
        $results = $this->horlogesModel->getAllHorloges();
        
        $data = [
            'title' => 'Horloges',
            'horloges' => $results
        ];

        $this->view('horloges/index', $data);
    }
}