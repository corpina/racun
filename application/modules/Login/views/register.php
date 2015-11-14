<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title> Registrasi </title>
        <?php
        $this->load->view('others/css');
        $this->load->view('others/js');
        $statregister = $this->session->userdata('statregister');
        $this->session->unset_userdata('statregister');
        ?>

    </head>

    <body>

        <div class="container" style="margin-top:30px;">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="login-panel panel panel-grey">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <span class="glyphicon glyphicon-repeat"></span>
                                Registrasi
                            </h3>
                        </div>
                        <div class="panel-body">
                            <form action="<?= base_url() ?>login/doRegistrasi" method="post">
                                <fieldset>
                                    <div class="form-group has-feedback">
                                        <input type="text" class="form-control feedback " name="namaRegis" placeholder="Nama Lengkap" id="inputPassword" required>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <input type="email" class="form-control" placeholder="Email" name="emailRegis" id="emailRegis" onblur="cek_email()" required>

                                        <div id="result0" style="margin-top:10px;"></div>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <input type="password" class="form-control" placeholder="Password" name="passwordRegis" id="passwordRegis" required>
                                        <div id="result1" style="margin-top:10px;"></div>

                                    </div>
                                    <div class="form-group has-feedback">
                                        <input type="password" class="form-control" placeholder="Ulangi Password" name="passwordRegis2" id="passwordRegis2" required>
                                        <div id="result2" style="margin-top:10px;"></div>
                                    </div>

                                    <div class="form-group col-md-12">
                                        <button type="submit" id="daftar" class="btn btn-primary" disabled> Daftar</button>
                                        <a href="<?php echo base_url(); ?>login" type="button" class="btn btn-danger">Batal</a>
                                    </div>
                                </fieldset>

                            </form>
                            <div class="col-md-12" style="text-align: left;">
                                Sudah punya akun? <a href="<?php echo base_url(); ?>login">Silahkan Masuk!</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
<script>

    function cek_email() {

        if ($('#emailRegis').val() !== "") {
            var re = /[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}/igm;
            var emailRegis = $('#emailRegis').val();
            if (!re.test(emailRegis)) {
                $('#result0').html('<span class="label label-danger">Format Email Salah</span>');
            } else {

                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url() . 'login/cekEmail'; ?>",
                    data: {"emailRegis": emailRegis},
                    success: function (resp) {
                        if (resp == 1) {
                            userstat = 0;
                            $('#result0').html('<span class="label label-danger">Maaf Email sudah digunakan</span>');
                            $("#daftar").attr('disabled', 'disabled');

                        } else {
                            userstat = 1;
                            $('#result0').html('');
                        }
                    }
                });
            }
        } else {
            $('#result0').html('');
        }
    }
    $(document).ready(function () {

        $('#passwordRegis2').keyup(function () {

            var password1 = $("#passwordRegis").val()
            var password2 = $("#passwordRegis2").val()

            if ($('#passwordRegis2').val() !== "") {

                if (password1 !== password2) {
                    $('#result2').html('<span class="label label-danger"> Maaf Password Tidak Sama</span>');
                    $("#daftar").attr('disabled', 'disabled');
                } else {
                    cek_email();
                    $('#result2').html("");
                    $("#daftar").removeAttr("disabled");
                }
            } else {
                $("#daftar").attr('disabled', 'disabled');
                $('#result2').html("");

            }
        });
        $('#passwordRegis').keyup(function () {

            if ($('#passwordRegis').val() !== "") {
                $('#result1').html(checkStrength($('#passwordRegis').val()));
            } else {
                $('#result1').html("");
                $("#daftar").attr('disabled', 'disabled');
            }
        });
        function checkStrength(password) {
            var strength = 0;
            if (password.length > 1)
                strength += 1;
            if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))
                strength += 1;
            if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/))
                strength += 1;
            if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/))
                strength += 1;
            if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/))
                strength += 1;
            if (strength < 2) {
                $('#result').removeClass();
                $('#result').addClass('weak');
                return '<span class="label label-danger">Password Lemah</span>';
            } else if (strength == 2) {
                $('#result').removeClass();
                $('#result').addClass('good');
                return '<span class="label label-yellow">Password Cukup</span>';
            } else {
                $('#result').removeClass();
                $('#result').addClass('strong');
                return '<span class="label label-success">Password Kuat</span>';
            }
        }
    })
            ;
</script>