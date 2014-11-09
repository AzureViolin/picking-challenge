<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1415387145322" ID="ID_726398891" MODIFIED="1415387239771" TEXT="Picking Challenge">
<node CREATED="1415387267355" ID="ID_15243620" MODIFIED="1415387281376" POSITION="right" TEXT="Object Recognition &amp; Pose Estimation">
<node CREATED="1415387541593" ID="ID_1690798442" MODIFIED="1415387570246" TEXT="INPUT: raw vision data"/>
<node CREATED="1415387572360" ID="ID_744228911" MODIFIED="1415387621627" TEXT="OUTPUT: Name, Pose, Position of all target object in the scene"/>
<node CREATED="1415387625093" ID="ID_1960787901" MODIFIED="1415387838792" TEXT="All object are known to the system in any possible form of choice, including picture template, RGB-D Pointcloud, mesh, feature description of certain part and so on"/>
<node CREATED="1415532077412" ID="ID_1645786842" MODIFIED="1415532279577" TEXT="Possible Tech">
<node CREATED="1415532133078" ID="ID_424307237" MODIFIED="1415532137927" TEXT="LineMod"/>
<node CREATED="1415532204692" ID="ID_1467393251" MODIFIED="1415532211843" TEXT="PCL"/>
</node>
</node>
<node CREATED="1415387281915" ID="ID_1046341303" MODIFIED="1415387286917" POSITION="right" TEXT="Grasp Planning">
<node CREATED="1415387743439" ID="ID_1583582966" MODIFIED="1415387788816" TEXT="INPUT: Object Name, Position, Pose, and other possible attributes"/>
<node CREATED="1415387856640" ID="ID_1411870384" MODIFIED="1415388351043" TEXT="OUTPUT: Best Grasp Mechanism and Strategy">
<node CREATED="1415387894151" ID="ID_1188042591" MODIFIED="1415498109843" TEXT="Fingered gripper, Vaccum Cup/Vaccum Cup Array"/>
<node CREATED="1415388351933" ID="ID_1103997626" MODIFIED="1415388553582" TEXT="Grasping pose of end effector"/>
</node>
<node CREATED="1415388425759" ID="ID_217123538" MODIFIED="1415388482227" TEXT="Since all object are pre-known, so a major portion of grasp strategies can be generated offline to save time"/>
<node CREATED="1415532256631" ID="ID_492584285" MODIFIED="1415532271060" TEXT="Possible Tech"/>
</node>
<node CREATED="1415387287299" ID="ID_1232811116" MODIFIED="1415495532698" POSITION="right" TEXT="Environmental Awareness">
<node CREATED="1415495630234" ID="ID_109057377" MODIFIED="1415495792831" TEXT="1.Scan the work environment, match shelf model to the scanned data"/>
<node CREATED="1415495793931" ID="ID_1261298725" MODIFIED="1415496049504" TEXT="2. Camera Setting Options">
<node CREATED="1415495930662" ID="ID_1379300504" MODIFIED="1415496004720" TEXT="two RGBD Camera, one for global monitoring (RGBD Global) and one installed on end effector (RGBD End)"/>
<node CREATED="1415496006100" ID="ID_1878369119" MODIFIED="1415496036552" TEXT="One RGBD end effector camera"/>
</node>
<node CREATED="1415496060029" ID="ID_897206453" MODIFIED="1415496114275" TEXT="3. Either use RGBD Global or RGBD End to monitor/scan the environment during each step of motion execution"/>
<node CREATED="1415496237638" ID="ID_1602970587" MODIFIED="1415496314461" TEXT="4. Might need self-filter for the global camera to filter the robot arm"/>
<node CREATED="1415532321881" ID="ID_1323835655" MODIFIED="1415532330923" TEXT="Possible Tech">
<node CREATED="1415532331909" ID="ID_799438464" MODIFIED="1415532334554" TEXT="Octomap"/>
</node>
</node>
<node CREATED="1415387302135" ID="ID_1780046207" MODIFIED="1415387325398" POSITION="right" TEXT="Path &amp; Motion Planning">
<node CREATED="1415496119782" ID="ID_1756610840" MODIFIED="1415496234754" TEXT="INPUT: Grasping pose of end effector, Current robot pose, environment model with obstacle updated constantly"/>
<node CREATED="1415496362409" ID="ID_1055279376" MODIFIED="1415496411725" TEXT="OUTPUT: Time-saving trajectory with good dynamics performance"/>
<node CREATED="1415532338656" ID="ID_1326637690" MODIFIED="1415532342591" TEXT="Possible Tech">
<node CREATED="1415532343401" ID="ID_310144083" MODIFIED="1415532402701" TEXT="OMPL"/>
</node>
</node>
<node CREATED="1415387344163" ID="ID_232375847" MODIFIED="1415387472582" POSITION="right" TEXT="Compliant Manipulation/ Motion Execution">
<node CREATED="1415496422105" ID="ID_1572898119" MODIFIED="1415496435336" TEXT="Baxter">
<node CREATED="1415496444004" ID="ID_1863393368" MODIFIED="1415496506202" TEXT="Monitor force on each joint during execution, and stop motion when robot arm accidentally hitting something"/>
</node>
<node CREATED="1415496435575" ID="ID_1197818449" MODIFIED="1415496437267" TEXT="PR2"/>
<node CREATED="1415496437491" ID="ID_1540770730" MODIFIED="1415496441137" TEXT="UR5"/>
</node>
<node CREATED="1415387485144" ID="ID_1368894908" MODIFIED="1415387507281" POSITION="right" TEXT="Task Planning">
<node CREATED="1415496905516" ID="ID_1863200363" MODIFIED="1415497940128" TEXT="Deciding which bin to pick">
<node CREATED="1415496918096" ID="ID_22495228" MODIFIED="1415496934591" TEXT="INPUT: Current status of stock item and shopping order"/>
<node CREATED="1415496940089" ID="ID_1811379668" MODIFIED="1415497953069" TEXT="OUTPUT: picking sequence"/>
</node>
<node CREATED="1415497955587" ID="ID_1319061897" MODIFIED="1415497984081" TEXT="A multi-item bin, deciding how to get target item">
<node CREATED="1415497757908" ID="ID_837172834" MODIFIED="1415497887218" TEXT="INPUT: Scanned data of a perticular storage bin with multiple items"/>
<node CREATED="1415497887716" ID="ID_1906994815" MODIFIED="1415498338398" TEXT="OUTPUT: end effector trajectories (and operation sequence) to expose target object for grasp planning"/>
</node>
</node>
<node CREATED="1415387507568" ID="ID_178475873" MODIFIED="1415387521341" POSITION="right" TEXT="Task Execution, Error Detection &amp; Recovery">
<node CREATED="1415496967352" ID="ID_1240550753" MODIFIED="1415497005166" TEXT="OUTPUT: Update stock item status and shopping order status during task execution"/>
<node CREATED="1415497012465" ID="ID_497064496" MODIFIED="1415497603281" TEXT="When picking from double- or multi-item bins, check the bin (and possibly ground) after picking, make sure no unnecessary items are moved out of storage bins">
<node CREATED="1415497666849" ID="ID_409577268" MODIFIED="1415497682513" TEXT="If an item is moved onto the ground, pick it back"/>
<node CREATED="1415497682831" ID="ID_1197315962" MODIFIED="1415497739074" TEXT="Try using other monitoring methods to make sure no unnecessary items are touched."/>
</node>
<node CREATED="1415497606499" ID="ID_560738299" MODIFIED="1415497652131" TEXT="If possible, check the order bin for picked item after each execution."/>
</node>
</node>
</map>
