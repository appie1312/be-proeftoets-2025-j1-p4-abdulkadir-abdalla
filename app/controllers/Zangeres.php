<?php

class zangeres extends BaseController
{
    private $zangeresModel;

    public function __construct()
    {
        $this->zangeresModel = $this->model('ZangeresModel');
    }

    public function index()
    {
        /**
         * Je roept de method getAllSmartphones aan van de smartphoneModel class
         */
        $results = $this->zangeresModel->getAllZangeres();
        
        $data = [
            'title' => 'Mooiste Zangeres',
            'zangeres' => $results
        ];

        $this->view('zangeres/index', $data);
    }
}