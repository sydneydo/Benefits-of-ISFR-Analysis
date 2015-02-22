%% Code Propagator
% Code to propagate initially defined condition

% Code that takes a complete data set (eg. propagation of habitat over
% 19000hrs)


startTick = 1;      % Tick from which failure is invoked
timeHorizon = 10000;    % Tick for 10000hrs after failure is invoked
failedSystem = LabPCA;

% Fail the system
% Failed system evaluator

% Clone system state to new stores
O2Store2 = StoreImpl('O2 Store','Material',O2Store.currentCapacity,o2storelevel(startTick));
CO2Store2 = StoreImpl('CO2 Store','Material',CO2Store.currentCapacity,co2storelevel(startTick));
N2Store2 = StoreImpl('N2 Store','Material',N2Store.currentCapacity,n2storelevel(startTick));
H2Store2 = StoreImpl('H2 Store','Material',H2Store.currentCapacity,h2storelevel(startTick));
MethaneStore2 = StoreImpl('CH4 Store','Material',MethaneStore.currentCapacity,ch4storelevel(startTick));

PotableWaterStore2 = StoreImpl('Potable H2O','Material',PotableWaterStore.currentCapacity,potablewaterstorelevel(startTick));
DirtyWaterStore2 = StoreImpl('Dirty H2O','Material',DirtyWaterStore.currentCapacity,dirtywaterstorelevel(startTick));
GreyWaterStore2 = StoreImpl('Grey H2O','Material',GreyWaterStore.currentCapacity,greywaterstorelevel(startTick));
DryWaterStore2 = StoreImpl('Dry Waste','Material',DryWaterStore.currentCapacity,drywaterstorelevel(startTick));

%%BiomassStore2 = BiomassStoreImpl(BiomassStore.currentCapacity);
CarriedFoodStore2 = FoodStoreImpl(CarriedFoodStore.currentCapacity,carridfoodstorelevel(startTick));

METOXregeneratorLoad2 = 

o2storelevel2 = [o2storelevel(startTick),zeros(1,timeHorizon)];
co2storelevel2 = [co2storelevel(startTick),zeros(1,timeHorizon)];
n2storelevel2 = [n2storelevel(startTick),zeros(1,timeHorizon)];
h2storelevel2 = [h2storelevel(startTick),zeros(1,timeHorizon)];
ch4storelevel2 = [ch4storelevel(startTick),zeros(1,timeHorizon)];
potablewaterstorelevel2 = [potablewaterstorelevel(startTick),zeros(1,timeHorizon)];
dirtywaterstorelevel2 = [dirtywaterstorelevel(startTick),zeros(1,timeHorizon)];
greywaterstorelevel2 = [greywaterstorelevel(startTick),zeros(1,timeHorizon)];
drywastestorelevel2 = [drywastestorelevel(startTick),zeros(1,timeHorizon)];
carriedfoodstorelevel2 = [carriedfoodstorelevel(startTick),zeros(1,timeHorizon)];
grownfoodstorelevel2 = [grownfoodstorelevel(startTick),zeros(1,timeHorizon)];
dryfoodlevel2 = [dryfoodlevel(startTick),zeros(1,timeHorizon)];
caloriccontent2 = [caloriccontent(startTick),zeros(1,timeHorizon)];
biomassstorelevel2 = [biomassstorelevel(startTick),zeros(1,timeHorizon)];
cropwaterstorelevel2 = [cropwaterstorelevel(startTick),zeros(1,timeHorizon)];
powerlevel2 = [powerlevel(startTick),zeros(1,timeHorizon)];
metoxregenstore2 = [metoxregenstore(startTick),zeros(1,timeHorizon)];
dumpedEVAdirtywater2 = [dumpedEVAdirtywater(startTick),zeros(1,timeHorizon)];
plssfeedwatertanklevel2 = [plssfeedwatertanklevel(startTick),zeros(1,timeHorizon)];
plsso2tanklevel2 = [plsso2tanklevel(startTick),zeros(1,timeHorizon)];
reservoirFillLevel2 = [reservoirFillLevel(startTick),zeros(1,timeHorizon)];

LabPressure2 = [LabPressure(startTick),zeros(1,timeHorizon)];
LabO2level2 = [LabO2level(startTick),zeros(1,timeHorizon)];
LabCO2level2 = [LabCO2level(startTick),zeros(1,timeHorizon)];
LabN2level2 = [LabN2level(startTick),zeros(1,timeHorizon)];
LabVaporlevel2 = [LabVaporlevel(startTick),zeros(1,timeHorizon)];
LabOtherlevel2 = [LabOtherlevel(startTick),zeros(1,timeHorizon)];
LabTotalMoles2 = [LabTotalMoles(startTick),zeros(1,timeHorizon)];

LoftPressure2 = [LoftPressure(startTick),zeros(1,timeHorizon)];
LoftO2level2 = [LoftO2level(startTick),zeros(1,timeHorizon)];
LoftCO2level2 = [LoftCO2level(startTick),zeros(1,timeHorizon)];
LoftN2level2 = [LoftN2level(startTick),zeros(1,timeHorizon)];
LoftVaporlevel2 = [LoftVaporlevel(startTick),zeros(1,timeHorizon)];
LoftOtherlevel2 = [LoftOtherlevel(startTick),zeros(1,timeHorizon)];
LoftTotalMoles2 = [LoftTotalMoles(startTick),zeros(1,timeHorizon)];
LoftCondensedVaporMoles2 = [LoftCondensedVaporMoles(startTick),zeros(1,timeHorizon)];

PCMPressure2 = [PCMPressure(startTick),zeros(1,timeHorizon)];
PCMO2level2 = [PCMO2level(startTick),zeros(1,timeHorizon)];
PCMCO2level2 = [PCMCO2level(startTick),zeros(1,timeHorizon)];
PCMN2level2 = [PCMN2level(startTick),zeros(1,timeHorizon)];
PCMVaporlevel2 = [PCMVaporlevel(startTick),zeros(1,timeHorizon)];
PCMOtherlevel2 = [PCMOtherlevel(startTick),zeros(1,timeHorizon)];
PCMTotalMoles2 = [PCMTotalMoles(startTick),zeros(1,timeHorizon)];

PLMPressure2 = [PLMPressure(startTick),zeros(1,timeHorizon)];
PLMO2level2 = [PLMO2level(startTick),zeros(1,timeHorizon)];
PLMCO2level2 = [PLMCO2level(startTick),zeros(1,timeHorizon)];
PLMN2level2 = [PLMN2level(startTick),zeros(1,timeHorizon)];
PLMVaporlevel2 = [PLMVaporlevel(startTick),zeros(1,timeHorizon)];
PLMOtherlevel2 = [PLMOtherlevel(startTick),zeros(1,timeHorizon)];
PLMTotalMoles2 = [PLMTotalMoles(startTick),zeros(1,timeHorizon)];

SuitlockPressure2 = [SuitlockPressure(startTick),zeros(1,timeHorizon)];
SuitlockO2level2 = [SuitlockO2level(startTick),zeros(1,timeHorizon)];
SuitlockCO2level2 = [SuitlockCO2level(startTick),zeros(1,timeHorizon)];
SuitlockN2level2 = [SuitlockN2level(startTick),zeros(1,timeHorizon)];
SuitlockVaporlevel2 = [SuitlockVaporlevel(startTick),zeros(1,timeHorizon)];
SuitlockOtherlevel2 = [SuitlockOtherlevel(startTick),zeros(1,timeHorizon)];
SuitlockTotalMoles2 = [SuitlockTotalMoles(startTick),zeros(1,timeHorizon)];

ogsoutput2 = [ogsoutput(startTick),zeros(1,timeHorizon)];
LabPCAaction2 = [LabPCAaction(:,startTick),zeros(4,timeHorizon+1)];
LoftPCAaction2 = [LoftPCAaction(:,startTick),zeros(4,timeHorizon+1)];
PCMPCAaction2 = [PCMPCAaction(:,startTick);zeros(4,timeHorizon+1)];
SuitlockPCAaction2 = [SuitlockPCAaction(:,startTick),zeros(4,timeHorizon+1)];
PLMPPRVaction2 = [PLMPPRVaction(:,startTick),zeros(4,timeHorizon+1)];

LabCCAAoutput2 = [LabCCAAoutput(:,startTick),zeros(1,timeHorizon)];
LoftCCAAoutput2 = [LoftCCAAoutput(:,startTick),zeros(1,timeHorizon)];
PCMCCAAoutput2 = [PCMCCAAoutput(:,startTick),zeros(1,timeHorizon)];
SuitlockCCAAoutput2 = [SuitlockCCAAoutput(:,startTick),zeros(1,timeHorizon)];

% condensedWaterRemoved = zeros(1,timeHorizon);
% co2injected = zeros(1,timeHorizon);

lettuceShelfWaterLevel2 = [lettuceShelfWaterLevel(startTick),zeros(1,timeHorizon)];
% peanutShelfWaterLevel = zeros(1,timeHorizon);
% soybeanShelfWaterLevel = zeros(1,timeHorizon);
% sweetPotatoShelfWaterLevel = zeros(1,timeHorizon);
% wheatShelfWaterLevel = zeros(1,timeHorizon);

crsH2OProduced2 = [crsH2OProduced(startTick),zeros(1,timeHorizon)];
crsCompressorOperation2 = [crsCompressorOperation(startTick),zeros(2,timeHorizon)];
co2accumulatorlevel2 = [co2accumulatorlevel(startTick),zeros(1,timeHorizon)];
co2removed2 = [co2removed(startTick),zeros(1,timeHorizon)];
% inflatableO2extracted = zeros(1,timeHorizon);

suitlockGasVented2 = [suitlockGasVented(startTick),zeros(1,timeHorizon)];

hoursOnEVA2 = [hoursOnEVA(startTick),zeros(1,timeHorizon)];     % Flag to indicate whether or not the Airlock should be depressurized
currentEVAcrew2 = [currentEVAcrew(:,startTick),zeros(1,4)];    % Current crewpersons on EVA

h = waitbar(0,'Please wait...');

%% Time Loop

tic

for j = 2:timeHorizon
        
    if astro1.alive == 0 || astro2.alive == 0 || astro3.alive == 0 || astro4.alive == 0 %||...
%             LettuceShelf.hasDied >= 1

%             sum([WhitePotatoShelves.Shelves.hasDied]) >= 1 ||...
%             sum([PeanutShelves.Shelves.hasDied]) >= 1 || ...
%             sum([SoybeanShelves.Shelves.hasDied]) >= 1 || ...
%             sum([SweetPotatoShelves.Shelves.hasDied]) >= 1 || ...
%             sum([WheatShelves.Shelves.hasDied]) >= 1
        
        % Remove all trailing zeros from recorded data vectors
        o2storelevel2 = o2storelevel2(1:(j-1));
        co2storelevel2 = co2storelevel2(1:(j-1));
        n2storelevel2 = n2storelevel2(1:(j-1));
        h2storelevel2 = h2storelevel2(1:(j-1));
        ch4storelevel2 = ch4storelevel2(1:(j-1));
        potablewaterstorelevel2 = potablewaterstorelevel2(1:(j-1));
        dirtywaterstorelevel2 = dirtywaterstorelevel2(1:(j-1));
        greywaterstorelevel2 = greywaterstorelevel2(1:(j-1));
        drywastestorelevel2 = drywastestorelevel2(1:(j-1));
        carriedfoodstorelevel2 = carriedfoodstorelevel2(1:(j-1));
        cropwaterstorelevel2 = cropwaterstorelevel2(1:(j-1));
        powerlevel2 = powerlevel2(1:(j-1));
        if strcmpi(EMUco2RemovalTechnology,'METOX')
            metoxregenstore2 = metoxregenstore2(1:(j-1));
        end
        
        if strcmpi(EMUurineManagementTechnology,'MAG')
            dumpedEVAdirtywater2 = dumpedEVAdirtywater2(1:(j-1));
        end
        plssfeedwatertanklevel2 = plssfeedwatertanklevel2(1:(j-1));
        plsso2tanklevel2 = plsso2tanklevel2(1:(j-1));
        
        hoursOnEVA2 = hoursOnEVA2(1:(j-1));
    
        % Record Inflatable Unit Atmosphere
        LabPressure2 = LabPressure2(1:(j-1));
        LabO2level2 = LabO2level2(1:(j-1));
        LabCO2level2 = LabCO2level2(1:(j-1));
        LabN2level2 = LabN2level2(1:(j-1));
        LabVaporlevel2 = LabVaporlevel2(1:(j-1));
        LabOtherlevel2 = LabOtherlevel2(1:(j-1));
        LabTotalMoles2 = LabTotalMoles2(1:(j-1));
                
        LoftPressure2 = LoftPressure2(1:(j-1));
        LoftO2level2 = LoftO2level2(1:(j-1));
        LoftCO2level2 = LoftCO2level2(1:(j-1));
        LoftN2level2 = LoftN2level2(1:(j-1));
        LoftVaporlevel2 = LoftVaporlevel2(1:(j-1));
        LoftOtherlevel2 = LoftOtherlevel2(1:(j-1));
        LoftTotalMoles2 = LoftTotalMoles2(1:(j-1));
        LoftCondensedVaporMoles2 = LoftCondensedVaporMoles2(1:(j-1));
    
        % Record Living Unit Atmosphere
        PCMPressure2 = PCMPressure2(1:(j-1));
        PCMO2level2 = PCMO2level2(1:(j-1));
        PCMCO2level2 = PCMCO2level2(1:(j-1));
        PCMN2level2 = PCMN2level2(1:(j-1));
        PCMVaporlevel2 = PCMVaporlevel2(1:(j-1));
        PCMOtherlevel2 = PCMOtherlevel2(1:(j-1));
        PCMTotalMoles2 = PCMTotalMoles2(1:(j-1));
        
        % Record Cargo Unit Atmosphere
        PLMPressure2 = PLMPressure2(1:(j-1));
        PLMO2level2 = PLMO2level2(1:(j-1));
        PLMCO2level2 = PLMCO2level2(1:(j-1));
        PLMN2level2 = PLMN2level2(1:(j-1));
        PLMVaporlevel2 = PLMVaporlevel2(1:(j-1));
        PLMOtherlevel2 = PLMOtherlevel2(1:(j-1));
        PLMTotalMoles2 = PLMTotalMoles2(1:(j-1));
        
        % Record Airlock Atmosphere
        SuitlockPressure2 = SuitlockPressure2(1:(j-1));
        SuitlockO2level2 = SuitlockO2level2(1:(j-1));
        SuitlockCO2level2 = SuitlockCO2level2(1:(j-1));
        SuitlockN2level2 = SuitlockN2level2(1:(j-1));
        SuitlockVaporlevel2 = SuitlockVaporlevel2(1:(j-1));
        SuitlockOtherlevel2 = SuitlockOtherlevel2(1:(j-1));
        SuitlockTotalMoles2 = SuitlockTotalMoles2(1:(j-1));
        
        ogsoutput2 = ogsoutput2(1:(j-1));
%         inflatableO2extracted = inflatableO2extracted(1:(i-1));
%         condensedWaterRemoved = condensedWaterRemoved(1:(i-1));
        
%         whitePotatoShelfWaterLevel = whitePotatoShelfWaterLevel(1:(i-1));
%         peanutShelfWaterLevel = peanutShelfWaterLevel(1:(i-1));
%         soybeanShelfWaterLevel = soybeanShelfWaterLevel(1:(i-1));
%         sweetPotatoShelfWaterLevel = sweetPotatoShelfWaterLevel(1:(i-1));
%         lettuceShelfWaterLevel2 = lettuceShelfWaterLevel2(1:(i-1));
%     
%         lettuceShelfWaterLevel2 = lettuceShelfWaterLevel2(1:(i-1));
        
        % Common Cabin Air Assemblies
        LabCCAAoutput2 = LabCCAAoutput2(1:(j-1));
        LoftCCAAoutput2 = LoftCCAAoutput2(1:(j-1));
        PCMCCAAoutput2 = PCMCCAAoutput2(1:(j-1));
        SuitlockCCAAoutput2 = SuitlockCCAAoutput2(1:(j-1));
        
        % Pressure Control Assemblies
        LabPCAaction2 = LabPCAaction2(:,1:(j-1));
        LoftPCAaction2 = LoftPCAaction2(:,1:(j-1));
        PCMPCAaction2 = PCMPCAaction2(:,1:(j-1));
        SuitlockPCAaction2 = SuitlockPCAaction2(:,1:(j-1));
        PLMPPRVaction2 = PLMPPRVaction2(:,1:(j-1));
        
        % Run Waste Processing ECLSS Hardware
        co2removed2 = co2removed2(1:(j-1));
        crsH2OProduced2 = crsH2OProduced2(1:(j-1));
        co2accumulatorlevel2 = co2accumulatorlevel2(1:(j-1));
        
        suitlockGasVented2 = suitlockGasVented2(1:(j-1));
        
        t = 1:(length(o2storelevel2));
        
        toc
        
        % Record and save command window display
        disp(['Simulation Run Ended: ',datestr(clock)]);
        diary off
        
        close(h)
        return
    end

    %% Record Data
    % Resource Stores
    o2storelevel2(j) = O2Store2.currentLevel;
    co2storelevel2(j) = CO2Store2.currentLevel;
    n2storelevel2(j) = N2Store2.currentLevel;
    h2storelevel2(j) = H2Store2.currentLevel;
    ch4storelevel2(j) = MethaneStore2.currentLevel;
    potablewaterstorelevel2(j) = PotableWaterStore2.currentLevel;
    dirtywaterstorelevel2(j) = DirtyWaterStore2.currentLevel;
    greywaterstorelevel2(j) = GreyWaterStore2.currentLevel;
    drywastestorelevel2(j) = DryWasteStore2.currentLevel;
    biomassstorelevel2(j) = BiomassStore2.currentLevel;
    powerlevel2(j) = MainPowerStore.currentLevel;
%     if strcmpi(EMUco2RemovalTechnology,'METOX')
%         metoxregenstore2(j) = METOXregeneratorLoad.currentLevel;
%     end
%     
%     if strcmpi(EMUurineManagementTechnology,'MAG')
%         dumpedEVAdirtywater2(j) = EMUmetabolicWaste.currentLevel;
%     end

    % Record PLSS Tanks
    plssfeedwatertanklevel2(j) = EMUfeedwaterReservoir.currentLevel;
    plsso2tanklevel2(j) = EMUo2Tanks.currentLevel;
    
    % Record Inflatable Unit Atmosphere
    LabPressure2(j) = Lab.pressure;
    LabO2level2(j) = Lab.O2Store.currentLevel;
    LabCO2level2(j) = Lab.CO2Store.currentLevel;
    LabN2level2(j) = Lab.NitrogenStore.currentLevel;
    LabVaporlevel2(j) = Lab.VaporStore.currentLevel;
    LabOtherlevel2(j) = Lab.OtherStore.currentLevel;
    LabTotalMoles2(j) = Lab.totalMoles;
    
    % Record Inflatable2 Unit Atmosphere
    LoftPressure2(j) = Loft.pressure;
    LoftO2level2(j) = Loft.O2Store.currentLevel;
    LoftCO2level2(j) = Loft.CO2Store.currentLevel;
    LoftN2level2(j) = Loft.NitrogenStore.currentLevel;
    LoftVaporlevel2(j) = Loft.VaporStore.currentLevel;
    LoftOtherlevel2(j) = Loft.OtherStore.currentLevel;
    LoftTotalMoles2(j) = Loft.totalMoles;
    
    % Record Living Unit Atmosphere
    PCMPressure2(j) = PCM.pressure;
    PCMO2level2(j) = PCM.O2Store.currentLevel;
    PCMCO2level2(j) = PCM.CO2Store.currentLevel;
    PCMN2level2(j) = PCM.NitrogenStore.currentLevel;
    PCMVaporlevel2(j) = PCM.VaporStore.currentLevel;
    PCMOtherlevel2(j) = PCM.OtherStore.currentLevel;
    PCMTotalMoles2(j) = PCM.totalMoles;
    
    % Record Living Unit 2 Atmosphere
    PLMPressure2(j) = PLM.pressure;
    PLMO2level2(j) = PLM.O2Store.currentLevel;
    PLMCO2level2(j) = PLM.CO2Store.currentLevel;
    PLMN2level2(j) = PLM.NitrogenStore.currentLevel;
    PLMVaporlevel2(j) = PLM.VaporStore.currentLevel;
    PLMOtherlevel2(j) = PLM.OtherStore.currentLevel;
    PLMTotalMoles2(j) = PLM.totalMoles;
    
    % Record Suitlock Atmosphere
    SuitlockPressure2(j) = Suitlock.pressure;
    SuitlockO2level2(j) = Suitlock.O2Store.currentLevel;
    SuitlockCO2level2(j) = Suitlock.CO2Store.currentLevel;
    SuitlockN2level2(j) = Suitlock.NitrogenStore.currentLevel;
    SuitlockVaporlevel2(j) = Suitlock.VaporStore.currentLevel;
    SuitlockOtherlevel2(j) = Suitlock.OtherStore.currentLevel;
    SuitlockTotalMoles2(j) = Suitlock.totalMoles;
    
    %% Tick Modules
    
    % Leak Modules
    Lab.tick;
    Loft.tick;
    PCM.tick;
    PLM.tick;
    Suitlock.tick;
    
    % Run Fans
    Lab2PCMFan.tick;
%     inflatable2LivingUnitFan2.tick;       % Switch off fan to prevent
%     atmospheric flow between plant growth chamber and the remainder of
%     the hab
    PLM2PCMFan.tick;
    Loft2PCMFan.tick;
    Lab2AirlockFan.tick;
    
    % Run Power Supply
    powerPS.tick; 
    
    % Run ECLSS Hardware       
    ogsoutput2(j) = ogs.tick;
    
    % Tick ORA
%     inflatableO2extracted(i) = inflatableORA.tick;
    
    % Pressure Control Assemblies
    LabPCAaction2(:,j+1) = LabPCA.tick(LabPCAaction2(:,j));
    LoftPCAaction2(:,j+1) = LoftPCA.tick(LoftPCAaction2(:,j));
    PCMPCAaction2(:,j+1) = PCMPCA.tick(PCMPCAaction2(:,j));
    SuitlockPCAaction2(:,j+1) = SuitlockPCA.tick(SuitlockPCAaction2(:,j));
    PLMPPRVaction2(:,j+1) = PLMPPRV.tick(PLMPPRVaction2(:,j));
    
    % Common Cabin Air Assemblies
    LabCCAAoutput2(j) = LabCCAA.tick;
    LoftCCAAoutput2(j) = LoftCCAA.tick;
    PCMCCAAoutput2(j) = PCMCCAA.tick;
    SuitlockCCAAoutput2(j) = SuitlockCCAA.tick;
          
    % Run Waste Processing ECLSS Hardware
    co2removed2(j) = mainvccr.tick;
    crsH2OProduced2(j) = crs.tick;
    crsCompressorOperation2(:,j) = crs.CompressorOperation;
    co2accumulatorlevel2(j) = crs.CO2Accumulator.currentLevel;
    waterRS.tick;
    
    %% Food Production System
    cropwaterstorelevel2(j) = CropWaterStore.currentLevel;
     
    if CropWaterStore.currentLevel <= 0
        disp(['Crop Water Store is empty at tick: ',num2str(j)])
        break
    end
    
    % ISRU inject water into CropWaterStore (0.565L/hr)
%     CropWaterStore.add(0.565);
    
%     % Record shelf water levels
%     lettuceShelfWaterLevel2(i) = LettuceShelf.ShelfWaterLevel;
%     peanutShelfWaterLevel(i) = PeanutShelf.ShelfWaterLevel;
%     soybeanShelfWaterLevel(i) = SoybeanShelf.ShelfWaterLevel;
%     sweetPotatoShelfWaterLevel(i) = SweetPotatoShelf.ShelfWaterLevel;
%     wheatShelfWaterLevel(i) = WheatShelf.ShelfWaterLevel;

    % Tick Crop Shelves
    %% add co2 injector here
%     co2injected(i) = co2Injector.tick;
%     WhitePotatoShelves.tick;
%     co2Injector.tick;
%     PeanutShelves.tick;
%     co2Injector.tick;
%     SoybeanShelves.tick;
%     co2Injector.tick;
%     SweetPotatoShelves.tick;
%     co2Injector.tick;
%     WheatShelves.tick;

	LettuceShelf.tick;

    FoodProcessor.tick;
    carriedfoodstorelevel2(j) = CarriedFoodStore2.currentLevel;
    grownfoodstorelevel2(j) = LocallyGrownFoodStore.currentLevel;
    if LocallyGrownFoodStore.currentLevel > 0       
        dryfoodlevel2(j) = sum(cell2mat({LocallyGrownFoodStore.foodItems.Mass})-cell2mat({LocallyGrownFoodStore.foodItems.WaterContent}));
        caloriccontent2(j) = sum([LocallyGrownFoodStore.foodItems.CaloricContent]);
    end    
    
    %% Tick Crew
    astro1.tick;
    astro2.tick;  
    astro3.tick;
    astro4.tick;
   
    %% Run ISRU
    PotableWaterStore.add(isruAddedWater);
    CropWaterStore.add(isruAddedCropWater);
    O2Store.add(isruAddedO2);
    N2Store.add(isruAddedN2);
    
    %% EVA
    CrewEVAstatus = [strcmpi(astro1.CurrentActivity.Name,'EVA'),...
        strcmpi(astro2.CurrentActivity.Name,'EVA'),...
        strcmpi(astro3.CurrentActivity.Name,'EVA'),...
        strcmpi(astro4.CurrentActivity.Name,'EVA')];
    
    % Regenerate METOX canisters if required
    % Add CO2 removed from METOX canister to Airlock
    if strcmpi(EMUco2RemovalTechnology,'METOX')
        Suitlock.CO2Store.add(METOXregeneratorLoad.take(metoxCO2regenRate));
    end
    
    % if any astro has a current activity that is EVA
    if sum(CrewEVAstatus) > 0
        % identify first crewmember
        hoursOnEVA2(j) = hoursOnEVA2(j-1)+1;
        if hoursOnEVA2(j) == 1
            % Store EVA status
            currentEVAcrew2 = CrewEVAstatus;

            % Error
            if O2Store.currentLevel < prebreatheO2
                disp(['Insufficient O2 for crew EVA prebreathe or EMU suit fill at tick: ',num2str(j)])
                disp('Current EVA has been skipped')
                % Advance activities for all astronauts
                astro1.skipActivity;
                astro2.skipActivity;
                astro3.skipActivity;
                astro4.skipActivity;
                continue
            end
            
            % perform airlock ops
            % purge and fill EVA suits with O2 from O2Store 
            EVAsuitfill = EVAenvironment.O2Store.add(O2Store.take(prebreatheO2));              % Fill two EMUs with 100% O2
            reservoirFillLevel2(j) = EMUfeedwaterReservoir.fill(PotableWaterStore);                                      % fill feedwater tanks
            EMUo2Tanks.fill(O2Store);                                                           % fill PLSS O2 tanks
            
            % Vent lost airlock gases
            suitlockCycleLoss = Suitlock.pressure*suitlockAirLossVolume/(idealGasConstant*(273.15+Suitlock.temperature));    % Suitlock losses are a function of pressure
            suitlockGasVented2(j) = Suitlock.vent(suitlockCycleLoss);
            
        elseif hoursOnEVA2(j) == 8      % end of EVA
            % Empty EMU and add residual gases within EMU to Airlock
            EVAenvironment.O2Store.currentLevel = 0;
            EVAenvironment.CO2Store.currentLevel = 0;
            EVAenvironment.VaporStore.currentLevel = 0;
            
            Suitlock.O2Store.add(finalEMUo2level);
            Suitlock.CO2Store.add(finalEMUco2level);
            Suitlock.VaporStore.add(finalEMUvaporlevel);
            
            % Define PLSS Store levels
            EMUfeedwaterReservoir.currentLevel = finalFeedwaterTanklevel;
            EMUo2Tanks.currentLevel = plssO2TankLevel;       
            
            % For METOX case, add PLSS removed CO2 back to Airlock 
            % (equivalent to METOX oven baking) 
            if strcmpi(EMUco2RemovalTechnology,'METOX')
                METOXregeneratorLoad.add(totalCO2removed);
            end
            
            % For humidity condensate: for RCA, the loss is captured in 
            % finalEMUvaporlevel, while for the METOX, all humidity
            % condensate is sitting within the feedwater tank
        end
    end
    % If the crew is no longer on EVA, reset hoursOnEVA
    if ~isequal(CrewEVAstatus,currentEVAcrew2)
        % if identified crewmember's current activity is not EVA
        hoursOnEVA2(j) = 0;
    end
    
    %% Tick Waitbar
    if mod(j,100) == 0
        waitbar(j/timeHorizon,h,['Current tick: ',num2str(j),' | Time Elapsed: ',num2str(round(toc)),'sec']);
    end

%     value(i) = hoursOnEVA;
end

toc

beep

close(h)