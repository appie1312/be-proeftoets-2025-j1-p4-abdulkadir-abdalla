<?php

class Sneakers extends BaseController
{
    private $sneakersModel;

    public function __construct()
    {
         $this->sneakersModel = $this->model('SneakersModel');
    }

    public function index($message = 'none')
    {
       /**
        * Het $data-array geeft informatie mee aan de view-pagina
        */
       $data = [
            'title' => 'Mooiste Sneakers',
            'message' => $message
       ];

       /**
        * Hier halen we alle sneakers op uit de database
        */
       $data['sneakers'] = $this->sneakersModel->getAllSneakers();       
       

      /**
       * Met de view-method uit de BaseController-class wordt de view
       * aangeroepen met de informatie uit het $data-array
       */
       $this->view('sneakers/index', $data); 
    }

    public function delete($Id)
    {
          $result = $this->sneakersModel->delete($Id);
          
          header('Refresh:3 ; url=' . URLROOT . '/sneakers/index');

          $this->index('flex');
    }


    public function create()
    {
          $data = [
               'title' => 'Nieuwe sneaker toevoegen',
               'message' => 'none'
          ];

          if ($_SERVER["REQUEST_METHOD"] == "POST") {
               
               if (empty($_POST['merk']) || empty($_POST['model']) || empty($_POST['type'])) {
                    echo '<div class="alert alert-danger text-center" role="alert"><h4>Vul alle velden in</h4></div>';
                    header('Refresh: 3; URL=' . URLROOT . '/sneakers/create');
                    exit;
               }

               $data['message'] = 'flex';

               $this->sneakersModel->create($_POST);
               
               header('Refresh: 3; URL=' . URLROOT . '/sneakers/index');
          }          

          $this->view('sneakers/create', $data);
    }

    public function update($Id = NULL)
    {
          $data = [
               'title' => 'Wijzig de sneaker',
               'message' => 'none'
          ];

          if ($_SERVER['REQUEST_METHOD'] == "POST") 
          {
               $Id = $_POST['Id'];

               $result = $this->sneakersModel->updateSneaker($_POST);

               $data['message'] = 'flex';

               header("Refresh:3 ; url=" . URLROOT . "/sneakers/index");
          }

          $data['sneaker'] = $this->sneakersModel->getSneakerById($Id);


          $this->view('sneakers/update', $data);
    }

}
