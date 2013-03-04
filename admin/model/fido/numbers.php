<?php
class ModelFidoNumbers extends Model {
    public function addNumber($data) {
        $this->db->query("INSERT INTO " . DB_PREFIX . "numbers
            number = '" . $data['number'] . "',
            status = '" . (int)$data['status'] . "',
            ishelp = '" . (int)$data['ishelp'] . "'");

    }

    public function editNumber($data) {
        var_dump($data);
        $this->db->query("UPDATE " . DB_PREFIX . "numbers SET
            number = '" . $data['number'] . "',
            status = " . $data['status'] . ",
            ishelp = " . $data['ishelp'] . "
            WHERE num_id = " .$data['num_id']. "");
    }
    public function deleteNumber($num_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "numbers WHERE num_id = '" . (int)$num_id . "'");
    }

    public function getNumbers() {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "numbers");
        return $query->rows;
    }

    public function checkNumbers() {
        $create_numbers = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "numbers` (
        `num_id` int(11) NOT NULL auto_increment,
        `number` varchar(15) ,
        `status` int(3) ,
        `ishelp` int(3) ,
          PRIMARY KEY  (`num_id`))
          ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
        $this->db->query($create_numbers);

        $insert_numbers = "INSERT IGNORE INTO `" . DB_PREFIX . "numbers`
                    SET `num_id` = '1'";
        $this->db->query($insert_numbers);

        $insert_numbers = "INSERT IGNORE INTO `" . DB_PREFIX . "numbers`
                    SET `num_id` = '2'";
        $this->db->query($insert_numbers);

        $insert_numbers = "INSERT IGNORE INTO `" . DB_PREFIX . "numbers`
                    SET `num_id` = '3'";
        $this->db->query($insert_numbers);

        $insert_numbers = "INSERT IGNORE INTO `" . DB_PREFIX . "numbers`
                    SET `num_id` = '4'";
        $this->db->query($insert_numbers);

        $insert_numbers = "INSERT IGNORE INTO `" . DB_PREFIX . "numbers`
                    SET `num_id` = '5'";
        $this->db->query($insert_numbers);
    }
}
?>
