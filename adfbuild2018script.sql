/****** Object:  Table [dbo].[Cardinals]    Script Date: 4/29/2018 10:21:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cardinals]
(
	[digit] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[Counties]    Script Date: 4/29/2018 10:21:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counties]
(
	[countyname] [varchar](max) NULL,
	[fips] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO
/****** Object:  Table [dbo].[COUNTY_COUNTS]    Script Date: 4/29/2018 10:21:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTY_COUNTS]
(
	[FIPS_range] [varchar](100) NULL,
	[FCount] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO
/****** Object:  Table [dbo].[County_Master]    Script Date: 4/29/2018 10:21:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [dbo].[County_Master]
(
	[County] [varchar](100) NULL,
	[CountyName] [varchar](100) NULL
)
WITH (DATA_SOURCE = [srcweatherdata],LOCATION = N'/noaa/County.csv',FILE_FORMAT = [csvff],REJECT_TYPE = VALUE,REJECT_VALUE = 10)
GO
/****** Object:  Table [dbo].[Drought]    Script Date: 4/29/2018 10:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drought]
(
	[ReleaseDate] [varchar](50) NULL,
	[FIPS] [varchar](50) NULL,
	[County] [varchar](150) NULL,
	[State] [varchar](50) NULL,
	[None] [varchar](150) NULL,
	[D0] [varchar](150) NULL,
	[D1] [varchar](150) NULL,
	[D2] [varchar](150) NULL,
	[D3] [varchar](150) NULL,
	[D4] [varchar](150) NULL,
	[ValidStart] [varchar](50) NULL,
	[ValidEnd] [varchar](50) NULL,
	[StatisticFormatID] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[extActivity_AL_2017]    Script Date: 4/29/2018 10:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [dbo].[extActivity_AL_2017]
(
	[OrganizationIdentifier] [varchar](25) NULL,
	[OrganizationFormalName] [varchar](100) NULL,
	[ActivityIdentifier] [varchar](100) NULL,
	[ActivityTypeCode] [varchar](50) NULL,
	[ActivityMediaName] [varchar](50) NULL,
	[ActivityMediaSubdivisionName] [varchar](50) NULL,
	[ActivityStartDate] [varchar](50) NULL,
	[ActivityStartTime] [varchar](50) NULL,
	[ActivityStartTimeZoneCode] [varchar](10) NULL,
	[ActivityEndDate] [varchar](50) NULL,
	[ActivityEndTime] [varchar](50) NULL,
	[ActivityEndTimeZoneCode] [varchar](10) NULL,
	[ActivityRelativeDepthName] [varchar](50) NULL,
	[ActivityDepthHeightMeasureValue] [varchar](50) NULL,
	[ActivityDepthHeightMeasureUnitCode] [varchar](50) NULL,
	[ActivityDepthAltitudeReferencePointText] [varchar](50) NULL,
	[ActivityTopDepthHeightMeasureValue] [varchar](50) NULL,
	[ActivityTopDepthHeightMeasureUnitCode] [varchar](50) NULL,
	[ActivityBottomDepthHeightMeasureValue] [varchar](50) NULL,
	[ActivityBottomDepthHeightMeasureUnitCode] [varchar](50) NULL,
	[ProjectIdentifier] [varchar](50) NULL,
	[ActivityConductingOrganizationText] [varchar](50) NULL,
	[MonitoringLocationIdentifier] [varchar](50) NULL,
	[ActivityCommentText] [varchar](500) NULL,
	[SampleAquifer] [varchar](50) NULL,
	[HydrologicCondition] [varchar](50) NULL,
	[HydrologicEvent] [varchar](50) NULL,
	[ActivityLocationLatitudeMeasure] [varchar](50) NULL,
	[ActivityLocationLongitudeMeasure] [varchar](50) NULL,
	[ActivityLocationSourceMapScaleNumeric] [varchar](50) NULL,
	[ActivityLocationHorizontalAccuracyMeasureValue] [varchar](50) NULL,
	[ActivityLocationHorizontalAccuracyMeasureUnitCode] [varchar](50) NULL,
	[ActivityLocationHorizontalCollectionMethodName] [varchar](50) NULL,
	[ActivityLocationHorizontalCoordinateReferenceSystemDatumName] [varchar](50) NULL,
	[AssemblageSampledName] [varchar](50) NULL,
	[CollectionDurationValue] [varchar](50) NULL,
	[CollectionDurationUnitCode] [varchar](50) NULL,
	[SamplingComponentName] [varchar](50) NULL,
	[SamplingComponentPlaceInSeriesNumeric] [varchar](50) NULL,
	[ReachLengthMeasureValue] [varchar](50) NULL,
	[ReachLengthMeasureUnitCode] [varchar](50) NULL,
	[ReachWidthMeasureValue] [varchar](50) NULL,
	[ReachWidthMeasureUnitCode] [varchar](50) NULL,
	[PassCount] [varchar](50) NULL,
	[NetTypeName] [varchar](50) NULL,
	[NetSurfaceAreaMeasureValue] [varchar](50) NULL,
	[NetSurfaceAreaMeasureUnitCode] [varchar](50) NULL,
	[NetMeshSizeMeasureValue] [varchar](50) NULL,
	[NetMeshSizeMeasureUnitCode] [varchar](50) NULL,
	[BoatSpeedMeasureValue] [varchar](50) NULL,
	[BoatSpeedMeasureUnitCode] [varchar](50) NULL,
	[CurrentSpeedMeasureValue] [varchar](50) NULL,
	[CurrentSpeedMeasureUnitCode] [varchar](50) NULL,
	[ToxicityTestType] [varchar](50) NULL,
	[SampleCollectionMethodIdentifier] [varchar](50) NULL,
	[SampleCollectionMethodIdentifierContext] [varchar](50) NULL,
	[SampleCollectionMethodName] [varchar](200) NULL,
	[SampleCollectionMethodQualifierTypeName] [varchar](200) NULL,
	[SampleCollectionMethodDescriptionText] [varchar](200) NULL,
	[SampleCollectionEquipmentName] [varchar](50) NULL,
	[SampleCollectionMethodEquipmentCommentText] [varchar](200) NULL,
	[SamplePreparationMethodIdentifier] [varchar](50) NULL,
	[SamplePreparationMethodIdentifierContext] [varchar](50) NULL,
	[SamplePreparationMethodName] [varchar](200) NULL,
	[SamplePreparationMethodQualifierTypeName] [varchar](200) NULL,
	[SamplePreparationMethodDescriptionText] [varchar](200) NULL,
	[SampleContainerTypeName] [varchar](50) NULL,
	[SampleContainerColorName] [varchar](50) NULL,
	[ChemicalPreservativeUsedName] [varchar](50) NULL,
	[ThermalPreservativeUsedName] [varchar](50) NULL,
	[SampleTransportStorageDescription] [varchar](50) NULL,
	[ActivityMetricURL] [varchar](200) NULL,
	[ProviderName] [varchar](50) NULL
)
WITH (DATA_SOURCE = [srcwaterqualitydata],LOCATION = N'/activity_AL_2017.tsv',FILE_FORMAT = [tsvff],REJECT_TYPE = VALUE,REJECT_VALUE = 0)
GO
/****** Object:  Table [dbo].[NOAA]    Script Date: 4/29/2018 10:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOAA]
(
	[STATION] [varchar](250) NULL,
	[NAME] [varchar](250) NULL,
	[LATITUDE] [varchar](50) NULL,
	[LONGITUDE] [varchar](50) NULL,
	[ELEVATION] [varchar](50) NULL,
	[DATE] [varchar](50) NULL,
	[DAPR] [varchar](50) NULL,
	[DAPR_ATTRIBUTES] [varchar](50) NULL,
	[DASF] [varchar](50) NULL,
	[DASF_ATTRIBUTES] [varchar](50) NULL,
	[MDPR] [varchar](50) NULL,
	[MDPR_ATTRIBUTES] [varchar](50) NULL,
	[MDSF] [varchar](50) NULL,
	[MDSF_ATTRIBUTES] [varchar](50) NULL,
	[PRCP] [varchar](50) NULL,
	[PRCP_ATTRIBUTES] [varchar](50) NULL,
	[SNOW] [varchar](50) NULL,
	[SNOW_ATTRIBUTES] [varchar](50) NULL,
	[SNWD] [varchar](50) NULL,
	[SNWD_ATTRIBUTES] [varchar](50) NULL,
	[TAVG] [varchar](50) NULL,
	[TAVG_ATTRIBUTES] [varchar](50) NULL,
	[TMAX] [varchar](50) NULL,
	[TMAX_ATTRIBUTES] [varchar](50) NULL,
	[TMIN] [varchar](50) NULL,
	[TMIN_ATTRIBUTES] [varchar](50) NULL,
	[TOBS] [varchar](50) NULL,
	[TOBS_ATTRIBUTES] [varchar](50) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[PopulationByCountryAndYear]    Script Date: 4/29/2018 10:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopulationByCountryAndYear]
(
	[Country Name] [char](100) NULL,
	[IYEAR] [int] NULL,
	[Population] [float] NULL
)
WITH
(
	DISTRIBUTION = HASH ( [Country Name] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[PopulationByCountryAndYear1]    Script Date: 4/29/2018 10:21:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopulationByCountryAndYear1]
(
	[Country Name] [char](100) NULL,
	[IYEAR] [int] NULL,
	[Population] [float] NULL
)
WITH
(
	DISTRIBUTION = HASH ( [Country Name] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[PRCP_COUNTS]    Script Date: 4/29/2018 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRCP_COUNTS]
(
	[PRCP_ATTRIBUTE] [varchar](50) NULL,
	[PCount] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
/****** Object:  Table [dbo].[Weather]    Script Date: 4/29/2018 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weather]
(
	[cod] [varchar](max) NULL,
	[nmessage] [float] NULL,
	[cnt] [int] NULL,
	[list] [varchar](max) NULL,
	[cityid] [int] NULL,
	[cityname] [varchar](max) NULL,
	[citycountry] [varchar](max) NULL,
	[citycoordlat] [float] NULL,
	[citycoordlon] [float] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO
/****** Object:  StoredProcedure [dbo].[BUCKET_PRCP_ATTRIBUTES]    Script Date: 4/29/2018 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BUCKET_PRCP_ATTRIBUTES] AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	INSERT INTO PRCP_COUNTS SELECT COALESCE(prcp_attributes, 'NA', prcp_attributes) as PRCP_ATTRIBUTE, count( *) PCount from noaa group by prcp_attributes 
END
GO
/****** Object:  StoredProcedure [dbo].[PREDICT_POPULATION]    Script Date: 4/29/2018 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PREDICT_POPULATION] AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

INSERT INTO PopulationByCountryAndYear select g1.[Country Name] Country, cd.digit +  ( select max(IYEAR) from [dbo].[PopulationByCountryAndYear1] ) [YEAR],
		ROUND(((SELECT g2.Population from [dbo].[PopulationByCountryAndYear1] g2 WHERE g2.IYEAR = g1.[YEAR] AND g2.[Country Name] = g1.[Country Name]) + 		
		((SELECT DISTINCT(ADNDM.Addend) FROM (
			select  H.[Country Name], avg(H.Population - PrevH.Population) OVER(Partition BY H.[Country Name]) AS Addend
			from [dbo].[PopulationByCountryAndYear1] H
			inner join
			[dbo].[PopulationByCountryAndYear1] PrevH
			on H.IYEAR-1 = PrevH.IYEAR AND H.[Country Name] = PrevH.[Country Name]			
		) ADNDM WHERE ADNDM.[Country Name] = g1.[Country Name]) * cd.digit)),0) Forcasted		
FROM cardinals cd , 
( 
	SELECT g.[Country Name], MAX(g.IYEAR) [YEAR]
	FROM [dbo].[PopulationByCountryAndYear1] g
	GROUP BY g.[Country Name] 
) g1

END
GO
