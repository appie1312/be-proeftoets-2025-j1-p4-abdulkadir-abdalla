<?php

class SneakersModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllSneakers()
    {
        $sql = "SELECT  Id
                      ,Merk
                      ,Model
                      ,Type
                      ,IsActief
                      ,Opmerking
                      ,DatumAangemaakt
                      ,DatumGewijzigd
                FROM Sneakers
                WHERE IsActief = 1
                ORDER BY Merk ASC";

        $this->db->query($sql);
        return $this->db->resultSet();
    }

    public function getSneakerById($id)
    {
        $sql = "SELECT  Id
                      ,Merk
                      ,Model
                      ,Type
                      ,IsActief
                      ,Opmerking
                      ,DatumAangemaakt
                      ,DatumGewijzigd
                FROM Sneakers
                WHERE Id = :id";

        $this->db->query($sql);
        $this->db->bind(':id', $id, PDO::PARAM_INT);
        return $this->db->single();
    }

    public function create($data)
    {
        $sql = "INSERT INTO Sneakers (Merk, Model, Type, IsActief, Opmerking, DatumAangemaakt, DatumGewijzigd)
                VALUES (:merk, :model, :type, :isactief, :opmerking, SYSDATE(6), SYSDATE(6))";
    
        $this->db->query($sql);
        $this->db->bind(':merk', $data['merk'], PDO::PARAM_STR);
        $this->db->bind(':model', $data['model'], PDO::PARAM_STR);
        $this->db->bind(':type', $data['type'], PDO::PARAM_STR);
        $this->db->bind(':isactief', true, PDO::PARAM_BOOL);
        $this->db->bind(':opmerking', '', PDO::PARAM_STR); 
    
        return $this->db->execute();
    }
    

    public function update($data)
    {
        $sql = "UPDATE Sneakers
                SET    Merk = :merk,
                       Model = :model,
                       Type = :type,
                       IsActief = :isactief,
                       Opmerking = :opmerking,
                       DatumGewijzigd = SYSDATE(6)
                WHERE  Id = :id";

        $this->db->query($sql);
        $this->db->bind(':merk', $data['merk'], PDO::PARAM_STR);
        $this->db->bind(':model', $data['model'], PDO::PARAM_STR);
        $this->db->bind(':type', $data['type'], PDO::PARAM_STR);
        $this->db->bind(':isactief', $data['isactief'], PDO::PARAM_BOOL);
        $this->db->bind(':opmerking', $data['opmerking'], PDO::PARAM_STR);
        $this->db->bind(':id', $data['id'], PDO::PARAM_INT);

        return $this->db->execute();
    }

    public function delete($id)
    {
        $sql = "DELETE FROM Sneakers WHERE Id = :id";

        $this->db->query($sql);
        $this->db->bind(':id', $id, PDO::PARAM_INT);
        return $this->db->execute();
    }
}
