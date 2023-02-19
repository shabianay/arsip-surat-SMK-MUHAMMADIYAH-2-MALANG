<?php
    //cek session
    if(!empty($_SESSION['admin'])){
        $query = mysqli_query($config, "SELECT * FROM tbl_instansi");
        while($data = mysqli_fetch_array($query)){
            echo '
                <div class="col s12" id="header-instansi">
                    <div class="card yellow lighten-3 brown-text">
                        <div class="card-content">';
                            if(!empty($data['logo'])){
                                echo '<div class="circle left"><img class="logo" src="./upload/'.$data['logo'].'"/></div>';
                            } else {
                                echo '<div class="circle left"><img class="logo" src="./asset/img/logo.png"/></div>';
                            }

                            if(!empty($data['nama'])){
                                echo '<h5 class="ins">'.$data['nama'].'</h5>';
                            } else {
                                echo '<h5 class="ins">SMK Muhammadiyah 2 Malang</h5>';
                            }

                            if(!empty($data['alamat'])){
                                echo '<p class="almt">'.$data['alamat'].'</p>';
                            } else {
                                echo '<p class="almt">JJl. Baiduri Sepah No.27, Tlogomas, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144</p>';
                            }
                            echo '
                        </div>
                    </div>
                </div>';
        }
    } else {
        header("Location: ../");
        die();
    }
?>
