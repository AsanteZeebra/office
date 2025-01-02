<?php
include_once('load_session.php');

include_once('connect.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clients | Payment </title>

    <?php include_once('head.php'); ?>
</head>

<body class="hold-transition sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

        <?php include_once('navbar.php'); ?>

        <?php include_once('sidebar.php'); ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Client's Transactions</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Transactions</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                <div class="modal fade" id="mdquestion" style="margin-top: 15%;">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;"> Delete Transaction <i
                                        class="fa fa-question"></i></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <center>
                                    <button class="btn btn-info" data-dismiss="modal">No</button>
                                    <button class="btn btn-danger mdel">Yes</button>
                                </center>
                                <form method="post">
                                    <input type="hidden" class="form-control tfid">
                                </form>
                            </div>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->



                <!-- refund  modal -->
                <div class="modal fade" id="rfd" style="margin-top: 15%;">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;">Are you sure <i
                                        class="fa fa-question"></i></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <P>Are you sure to proceed and make this refund? Making this decision cannot be
                                    reversed.</P>
                                <center>
                                    <button class="btn btn-success" data-dismiss="modal">Cancel</button>
                                    <button class="btn btn-danger btpro">Proceed</button>
                                </center>
                                <form method="post" hidden>
                                    <input readonly type="text" class="form-control rfid">
                                </form>
                            </div>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <div class="modal fade" id="mdpay">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" style="margin-left: 40%;"><i class="fa fa-handshake"></i> Record
                                    Payment</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <form method="POST" id="pay">

                                    <div class="form-group">
                                        <label for="text">Client Name</label>
                                        <select name="client" class="form-control select2bs4 tfclient"
                                            data-placeholder="--Choose client--">
                                            <option value="">--Client--</option>
                                            <?php
                                            $sql = "SELECT * from  clients";
                                            $result = mysqli_query($conn, $sql);
                                            if ($result) {
                                                while ($row = mysqli_fetch_array($result)) {


                                                    $client = $row['fullname'];

                                                    ?>
                                                    <option value="<?php echo $client ?>"><?php echo $client ?></option>
                                                    <?php
                                                }
                                            } else {
                                                echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                                            }
                                            ?>
                                        </select>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Agent / Client ID:</label>
                                                <select name="passport" class="form-control select2bs4 tfpass"
                                                    data-placeholder="--ID--">
                                                    <option value="">--Agent/Client ID--</option>

                                                    <?php
                                                    $sql = "SELECT * from  clients";
                                                    $result = mysqli_query($conn, $sql);
                                                    if ($result) {
                                                        while ($row = mysqli_fetch_array($result)) {


                                                            $fullname = $row['fullname'];
                                                            $passport = $row['passport_number'];

                                                            ?>
                                                            <option value="<?php echo $passport ?>">
                                                                <?php echo $fullname ?>:<?php echo $passport ?>
                                                            </option>
                                                            <?php
                                                        }
                                                    } else {
                                                        echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                                                    }
                                                    ?>
                                                    <?php
                                                    $sql = "SELECT * from  agents";
                                                    $result = mysqli_query($conn, $sql);
                                                    if ($result) {
                                                        while ($row = mysqli_fetch_array($result)) {


                                                            $agent_id = $row['agent_id'];
                                                            $name = $row['business_name'];

                                                            ?>
                                                            <option value="<?php echo $agent_id ?>">
                                                                <?php echo $name ?>:<?php echo $agent_id ?>
                                                            </option>
                                                            <?php
                                                        }
                                                    } else {
                                                        echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Telephone</label>
                                                <input type="text" name="telephone" class="form-control tfphone"
                                                    placeholder="Telephone">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Destination</label>
                                                <select name="destination" class="form-control select2bs4 tfdestination"
                                                    data-placeholder="--Destination--">
                                                    <option value=""></option>
                                                    <option value="Canada">Canada</option>
                                                    <option value="USA">USA</option>
                                                    <option value="Australia">Australia</option>
                                                    <option value="New Zealand">New Zealand</option>
                                                    <option value="Armenia">Armenia</option>
                                                    <option value="Cambodia">Cambodia</option>
                                                    <option value="France">France</option>
                                                    <option value="Czech Republic">Czech Republic</option>
                                                    <option value="Portugal">Portugal</option>
                                                    <option value="Portugal">United Kingdon</option>
                                                    <option value="Brazil">Brazil</option>
                                                    <option value="Nethaland">Nethaland</option>
                                                    <option value="Poland">Poland</option>
                                                    <option value="Germany">Germany</option>
                                                    <option value="Spain">Spain</option>
                                                    <option value="Croatia">Croatia</option>
                                                    <option value="Singapore">Singapore</option>
                                                    <option value="Serbia">Serbia</option>
                                                    <option value="Colombia">Colombia</option>
                                                    <option value="South Africa">South Africa</option>
                                                    <option value="Malta">Malta</option>
                                                    <option value="Hungary">Hungary</option>
                                                    <option value="Romania">Romania</option>
                                                    <option value="Moldova">Moldova</option>
                                                    <option value="Mauritius">Mauritius</option>
                                                    <option value="Dubai">Dubai</option>
                                                    <option value="Qatar">Qatar</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Payment For</label>
                                                <input type="text" class="form-control tfpay" name="payfor"
                                                    placeholder="Payment For">

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="">Amount</label>
                                                <input type="number" name="amount" class="form-control tfamount"
                                                    placeholder="0.00">
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label for="">Cc.</label>
                                                <select name="money" class="form-control tfcurrency"
                                                    data-placeholder="Currency">
                                                    <option value="">--Currency--</option>
                                                    <option value="¢">Ghana cedi(¢)</option>
                                                    <option value="€">Euro(€)</option>
                                                    <option value="£">Pound(£)</option>
                                                    <option value="$">US Dollar($)</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Payment Mode</label>
                                                <select name="paymentmode" class="form-control select2bs4 tfmode"
                                                    data-placeholder="--Payment Mode--">
                                                    <option value=""></option>
                                                    <option value="Cash">Cash</option>
                                                    <option value="Mobile-Money">Mobile Money</option>
                                                    <option value="Bank-Payment">Bank payment</option>
                                                </select>
                                            </div>
                                        </div>



                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="">Email: </label>
                                                <input type="email" name="reference" class="form-control tfreference"
                                                    placeholder="email:">

                                            </div>
                                            <!-- /.card-body -->
                                            <div class="card-footer">
                                                <div class="float-right">

                                                    <button type="submit" class="btn btn-primary"> Submit
                                                        payment</button>
                                                </div>
                                                <button type="reset" class="btn btn-default " data-dismiss="modal"><i
                                                        class="fas fa-times"></i> Close</button>
                                </form>
                            </div>

                            <!-- /.card-footer -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>

        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->



    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"> 
        </div>
        <div class="card-body">

            <table class="table table-hover border-stripped" id="example1">

                <thead>

                    <tr style="text-align:center">
                        <th hidden></th>
                        <th>ID</th>
                        <th>Client</th>
                        <th>Destination</th>
                        <th hidden>Payment_type</th>
                        <th hidden>Telephone</th>
                        <th hidden>Email</th>
                        <th>payment_date</th>
                        <th>Amount</th>
                        <th>Status</th>
                        <th><i class="fa fa-bars"></i></th>
                    </tr>
                </thead>

                <tbody>
                    <?php
                    $sql = "SELECT * from  payment WHERE Refund='Yes' ORDER BY id DESC";
                    $result = mysqli_query($conn, $sql);
                    if ($result) {
                        while ($row = mysqli_fetch_array($result)) {


                            $client = $row['client'];
                            $destination = $row['destination'];
                            $payment_type = $row['payfor'];
                            $amount = $row['amount'];

                            $telephone = $row['telephone'];
                            $reference = $row['reference'];
                            $date = $row['date_created'];
                            $passport_number = $row['passport_number'];
                            $currency = $row['currency'];
                            $id = $row['id'];
                            $transaction_id = $row['transaction_id'];
                            $status = $row['status'];

                            ?>
                            <tr style="text-align:center;">
                                <td hidden><?php echo $id; ?></td>
                                <td> <a
                                        href="invoice.php? psn=<?php echo $id; ?> && mid=<?php echo $_GET['mid'] ?>"><?php echo $transaction_id; ?></a>
                                </td>
                                <td><?php echo $client; ?></td>
                                <td><?php echo $destination; ?></td>
                                <td hidden><?php echo $payment_type; ?></td>
                                <td hidden><?php echo $telephone; ?></td>
                                <td hidden><?php echo $reference; ?></td>
                                <td><?php echo $date; ?></td>
                                <td><?php echo $currency; ?><?php echo number_format($amount); ?></td>

                                <?php
                                if ($status === "Paid") {
                                    echo "<td><label class='badge badge-success'>Success</label></td>";
                                } elseif ($status === "Refunded") {
                                    echo "<td><label class='badge badge-danger'>$status</label></td>";
                                } else {
                                    echo "<td><label class='badge badge-info'>$status</label></td>";
                                }
                                ?>


                                <td class="tdedit">
                                    <a class='btn btn-primary btn-sm'
                                        href="invoice.php? psn=<?php echo $id; ?> && mid=<?php echo $_GET['mid'] ?>"
                                        class="text-muted tdedit" data-toggle="tooltip" title="Generate receipt"><i
                                            class="fa fa-print"></i> </a> 

                                </td>
                            </tr>
                            <?php

                        }
                    } else {
                        echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                    }

                    ?>
                </tbody>
                <tfoot>
                    <thead>

                        <tr>
                            <th hidden>ID</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <?php


                            $code = "SELECT SUM(amount) amount FROM payment WHERE currency='$' AND status='Paid'";
                            $run = mysqli_query($conn, $code);
                            if ($run) {
                                while ($row = mysqli_fetch_assoc($run)) {

                                    $total = $row['amount'];
                                    echo "";

                                    ?>

                                    <th>Total($): <?php echo number_format($total); ?>.00</th>
                                    <?php
                                }
                            } else {
                                echo "No Record Found";
                            }
                            ?>


                            <?php

                            include_once('connect.php');
                            $code = "SELECT SUM(amount) amount FROM payment WHERE currency='¢' AND status='Paid'";
                            $run = mysqli_query($conn, $code);
                            if ($run) {
                                while ($row = mysqli_fetch_assoc($run)) {

                                    $total = $row['amount'];
                                    echo "";

                                    ?>

                                    <th>Total(¢): <?php echo number_format($total); ?>.00</th>
                                    <?php
                                }
                            } else {
                                echo "No Record Found";
                            }
                            ?>


                        </tr>
                    </thead>
                </tfoot>
            </table>

        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <!-- Footer content here -->
        </div>
        <!-- /.card-footer-->
    </div>
    <!-- /.card -->

    </section>
    <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->



    <?php include_once('footer.php'); ?>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->



    <?php include_once('scripts.php'); ?>
    


    <script>
        $(function () {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>