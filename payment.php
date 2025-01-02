<?php
include_once('connect.php');

include_once('load_session.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <?php include_once('head.php'); ?>

</head>

<body class="hold-transition sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">
        <!-- Navbar -->
        <?php include_once('navbar.php'); ?>

        <?php include_once('sidebar.php'); ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Transactions</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">transactions


                                </li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                <!-- Default box -->
                <div class="row">

                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">


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

                                <!--  pay modal-->
                                <div class="modal fade" id="mdpay">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Record Payment</h4>
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form method="post" id="pay">

                                                    <div class="row">
                                                        <!-- Name -->
                                                        <div class="col-md-8">
                                                            <div class="form-group">
                                                                <label for="">Client Name:</label>
                                                                <select name="client"
                                                                    class="form-control select2bs4 tfclient"
                                                                    data-placeholder="--Choose client--">
                                                                    <option value="">--Client--</option>
                                                                    <?php
                                                                    $sql = "SELECT * from  clients";
                                                                    $result = mysqli_query($conn, $sql);
                                                                    if ($result) {
                                                                        while ($row = mysqli_fetch_array($result)) {


                                                                            $client = $row['fullname'];

                                                                            ?>
                                                                            <option value="<?php echo $client ?>">
                                                                                <?php echo $client ?>
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

                                                        <!-- Type -->
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label>Type</label>
                                                                <select name="ttp" class="form-control tftype">
                                                                    <option value="">-select-</option>
                                                                    <option value="Invoice">Invoice</option>
                                                                    <option value="Receipt">Receipt</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                    </div>


                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="">Agent / Client ID:</label>
                                                                <select name="passport"
                                                                    class="form-control select2bs4 tfpass"
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
                                                                <input type="text" name="telephone"
                                                                    class="form-control tfphone"
                                                                    placeholder="Telephone">
                                                            </div>
                                                        </div>



                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="">Destination</label>
                                                                <select name="destination"
                                                                    class="form-control select2bs4 countrypicker tfdestination"
                                                                    multiple="multiple"
                                                                    data-placeholder="Select country"
                                                                    data-live-search="true" data-flag="true"
                                                                    style="width:100%;">

                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="">Being</label>
                                                                <input type="text" class="form-control tfpay"
                                                                    name="payfor" placeholder="Payment For">

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="">Amount</label>
                                                                <input type="number" name="amount"
                                                                    class="form-control tfamount" placeholder="0.00">
                                                            </div>
                                                        </div>

                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label for="">Currency</label>
                                                                <select name="money" class="form-control tfcurrency"
                                                                    data-placeholder="Currency">
                                                                    <option value="">--choose--</option>
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
                                                                <select name="paymentmode"
                                                                    class="form-control select2bs4 tfmode"
                                                                    data-placeholder="--Payment Mode--">
                                                                    <option value=""></option>
                                                                    <option value="Cash">Cash</option>
                                                                    <option value="Mobile-Money">Mobile Money</option>
                                                                    <option value="Bank-Payment">Bank payment</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">

                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label for="">Email: </label>
                                                                <input type="email" name="reference"
                                                                    class="form-control tfreference"
                                                                    placeholder="email:">

                                                            </div>
                                                        </div>
                                                    </div>

                                            </div>

                                            <div class="modal-footer justify-content-between">
                                                <button type="button" class="btn btn-default"
                                                    data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                            </div>

                                        </div>
                                        <!-- /.modal-content -->
                                        </form>
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->

                                <!-- Default box -->
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title"> <a href="transactions_stats.php?mid=<?php $ml = $_GET['mid'];
                                        echo $ml; ?>" class="btn btn-primary btn-sm"> <i class="fa fa-chart-line"></i>
                                                Statistics </a></h3>
                                        <?php

                                        $sql = "SELECT COUNT(*) AS total FROM payment WHERE Refund='Yes'";
                                        $result = mysqli_query($conn, $sql);
                                        if ($result) {
                                            while ($row = mysqli_fetch_array($result)) {




                                                ?>
                                                <a href="refunds.php?mid=<?php echo $_GET['mid'] ?>" style="margin-left:10px;"
                                                    class="btn btn-primary btn-sm"><i class="fa fa-retweet"></i>
                                                    Refunds (<?php echo $row['total']; ?>)</a>
                                                <?php

                                            }
                                        } else {
                                            echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                                        }

                                        ?>

                                        <a href="#" style="margin-left:10px;" class="btn btn-primary btn-sm"><i
                                                class="fa fa-print"></i>
                                            Statements</a>

                                        <button class="btn btn-primary btn-sm" style="float:right;" data-toggle="modal"
                                            data-target="#mdpay"><i class="fa fa-plus"></i> Create New</button>
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

                                                    <th>Amount</th>
                                                    <th>Type</th>
                                                    <th>Status</th>
                                                    <th>Date</th>
                                                    <th><i class="fa fa-bars"></i></th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <?php
                                                $sql = "SELECT * from  payment ORDER BY id DESC";
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
                                                        $type = $row['paytype'];

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

                                                            <td><?php echo $currency; ?><?php echo number_format($amount); ?>
                                                            </td>
                                                            <?php
                                                            if ($type === "Invoice") {
                                                                echo "  <td>Invoice <i class='fa fa-arrow-up' style='color:#E0A800'></i></td>";
                                                            } elseif ($type === "Receipt") {
                                                                echo "  <td>Receipt <i class='fa fa-arrow-down' style='color:#28A745'></i></td>";
                                                            }
                                                            ?>



                                                            <?php
                                                            if ($status === "Paid") {
                                                                echo "<td><label class='badge badge-success'>Success</label></td>";
                                                            } elseif ($status === "Refunded") {
                                                                echo "<td><label class='badge badge-danger'>$status</label></td>";
                                                            } else {
                                                                echo "<td><label class='badge badge-info'>$status</label></td>";
                                                            }
                                                            ?>
                                                            <td><?php echo $date; ?></td>

                                                            <td class="tdedit">
                                                                <a class='btn btn-primary btn-sm'
                                                                    href="invoice.php? psn=<?php echo $id; ?> && mid=<?php echo $_GET['mid'] ?>"
                                                                    class="text-muted tdedit" data-toggle="tooltip"
                                                                    title="Generate receipt"><i class="fa fa-print"></i> </a> <a
                                                                    class=" btn btn-danger btn-sm tdedit" data-toggle="modal"
                                                                    data-target="#mdquestion" data-toggle="tooltip"
                                                                    title="Delete Payment"><i class="fa fa-times"></i> </a> <a
                                                                    class="btn btn-warning btn-sm rfbt" data-toggle="modal"
                                                                    data-target="#rfd" data-toggle="tooltip" title="Refund"><i
                                                                        class="fa fa-retweet"></i></a>

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
                                                        

                                                        <?php


                                                        $code = "SELECT SUM(amount) amount FROM payment WHERE currency='$' AND status='Paid'";
                                                        $run = mysqli_query($conn, $code);
                                                        if ($run) {
                                                            while ($row = mysqli_fetch_assoc($run)) {

                                                                $total = $row['amount'];
                                                                echo "";

                                                                ?>

                                                                <th>Total($): <?php echo number_format($total, 2); ?></th>
                                                                <?php
                                                            }
                                                        } else {
                                                            echo "No Record Found";
                                                        }
                                                        ?>

                                                        <?php


                                                        $code = "SELECT SUM(amount) amount FROM payment WHERE currency='€' AND status='Paid'";
                                                        $run = mysqli_query($conn, $code);
                                                        if ($run) {
                                                            while ($row = mysqli_fetch_assoc($run)) {

                                                                $total = $row['amount'];
                                                                echo "";

                                                                ?>

                                                                <th>Total(€): <?php echo number_format($total, 2); ?></th>
                                                                <?php
                                                            }
                                                        } else {
                                                            echo "No Record Found";
                                                        }
                                                        ?>

<?php


                                                        $code = "SELECT SUM(amount) amount FROM payment WHERE currency='£' AND status='Paid'";
                                                        $run = mysqli_query($conn, $code);
                                                        if ($run) {
                                                            while ($row = mysqli_fetch_assoc($run)) {

                                                                $total = $row['amount'];
                                                                echo "";

                                                                ?>

                                                                <th>Total(£): <?php echo number_format($total, 2); ?></th>
                                                                <?php
                                                            }
                                                        } else {
                                                            echo "No Record Found";
                                                        }
                                                        ?>

                                                        <?php


                                                        $code = "SELECT SUM(amount) amount FROM payment WHERE currency='¢' AND status='Paid'";
                                                        $run = mysqli_query($conn, $code);
                                                        if ($run) {
                                                            while ($row = mysqli_fetch_assoc($run)) {

                                                                $total = $row['amount'];


                                                                ?>

                                                                <th>Total(¢): <?php echo number_format($total, 2); ?></th>
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


                            </div>
                        </div>
                    </div>
                </div>

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

    <?php include_once("scripts.php");
    include_once('verify.php');
    ?>


</body>

</html>