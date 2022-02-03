MODULE Module1
       
    CONST robtarget Target_10:=[[1845.310568624,0,1165.263528275],[0.700028676,0,0.714114734,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[1869.841482343,0,351.982794242],[0.708176688,0,0.706035253,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_25:=[[895.494158417,1248.976757634,476.638064362],[0.634915636,-0.311287272,0.634852453,0.311359492],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[-59.962976648,1292.993835357,482.280295667],[0.502544841,-0.497475013,0.503471471,0.496471321],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[-58.57494655,1709.225040825,482.058366266],[0.502544841,-0.497475013,0.503471471,0.496471321],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_41:=[[-58.57494655,1343.92028614,482.058366266],[0.502544841,-0.497475013,0.503471471,0.496471321],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_51:=[[1461.868533648,766.758695219,889.042973148],[0.776683991,-0.185116689,0.577593438,0.169940022],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_61:=[[158.985392675,-1299.630065486,713.888752887],[0.51321887,0.490480502,0.506512222,-0.489367589],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_71:=[[145.32624319,-1779.204024326,713.888504299],[0.505128934,0.498716509,0.498405113,-0.49771372],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Módulo:  Module1
    !
    ! Descripción:
    !   <Introduzca la descripción aquí>
    !
    ! Autor: juanc
    !
    ! Versión: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedimiento Main
    !
    !   Este es el punto de entrada de su programa
    !
    !***********************************************************
    PROC main()
        !Añada aquí su código
        SetDO DevolverMesa,0;
        GoToWheel; 
        GoToCar;
        GoHome;
        main;
    ENDPROC
    PROC GoToWheel()
        MoveJ Target_10,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        MoveJ Target_20,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        MoveJ Target_25,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        MoveJ Target_30,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        WaitDI AcercarRobot,1;
        MoveL Target_40,v200,fine,GripperRueda_1\WObj:=Workobject_1;
        SetDO AgarraRueda,1;
        WaitTime 1;
        SetDO AgarraRueda,0;
    ENDPROC
    PROC GoToCar()
        MoveJ Target_41,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        MoveJ Target_51,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        MoveJ Target_61,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        MoveL Target_71,v200,fine,Tooldata_1\WObj:=Workobject_1;
        SetDO SoltarRueda,1;
        WaitTime 1;
        SetDO SoltarRueda,0;
    ENDPROC
    PROC GoHome()
        MoveL Target_61,v200,fine,Tooldata_1\WObj:=Workobject_1;
        MoveJ Target_10,v1500,z1,Tooldata_1\WObj:=Workobject_1;
        SetDO DevolverMesa,1;
    ENDPROC
ENDMODULE