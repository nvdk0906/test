<div class="row gridContainer customersTable show-hide-animation" >
                <div class="col-md-10">
                    <div>
                        <table class="table table-striped table-condensed">
                            <thead>
                                <tr>
                                    <th>&nbsp;</th>
                                    <th >Name</th>
                                    <th >Location</th>
                                    <th >Orders</th>
                                    <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
								$db = new PDO('mysql:host=localhost;dbname=customer','root','');
								$sql = "select * from customers";
								$result = $db->query($sql);
								while ($child = $result->fetch(PDO::FETCH_ASSOC)){
									echo'<tr class="repeat-animation">
                                <td><a href="customeredit"><img src="Content/images/'.$child['gender'].'.png" class="cardImage" alt="Customer Image" /></a></td>
                                <td><a href="Editcustomer">'.$child['lname'].' '.$child['fname'].'</a></td>
                                <td>Tp.HCM, Quận 9 </td>
                                <td>
                                    <a href="customerorder" class="btn-link">
                                        99
                                        <span> 
                                        </span>
                                    </a>
                                </td>
                                <td><a href="xlcustomer/xlxoa.php?id='.$child['id'].'"><button class="btn btn-danger" " >Delete</button></a></td>
                             </tr>';
								}
							
							?>                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>