
%module RobotApi
#define UBTEDU_SDK_SW_VER              "01"
#define UBTEDU_ROBOT_NAME_LEN       (32)
#define UBTEDU_ROBOT_IP_ADDR_LEN        (16)
#define MAX_SHELL_CMD_LEN   256          

typedef enum
{
    UBTEDU_ROBOT_STATUS_TYPE_PLAYACTION = 1,    /**< Play an action file */
    UBTEDU_ROBOT_STATUS_TYPE_VOLUME,            /**< Volume status */
    UBTEDU_ROBOT_STATUS_TYPE_POWER_VOLTAGE,     /**< Power voltage status */
    UBTEDU_ROBOT_STATUS_TYPE_POWER_RECHARGE,    /**< Power recharge status */
    UBTEDU_ROBOT_STATUS_TYPE_POWER_PERCENT,     /**< Power percent status */
    UBTEDU_ROBOT_STATUS_TYPE_INVALID            /**< Invalid type */
} UBTEDU_ROBOT_STATUS_TYPE_e;
typedef enum
{
    UBTEDU_ROBOT_PLAY_STATUS_IDLE,          /**< Idle status */
    UBTEDU_ROBOT_PLAY_STATUS_PLAYING,       /**< Playing */
    UBTEDU_ROBOT_PLAY_STATUS_PAUSED,        /**< Paused */
    UBTEDU_ROBOT_PLAYSTATUS_END,            /**< End */
    UBTEDU_ROBOT_PLAY_STATUS_INVALID        /**< Invalid status */
} UBTEDU_ROBOT_PLAYMUSIC_STATUS_e;

typedef enum
{
    UBTEDU_RC_SUCCESS = 0,    /**< Success */
    UBTEDU_RC_FAILED,         /**< Failed */
    UBTEDU_RC_NORESOURCE,     /**< No resource */
    UBTEDU_RC_NOT_FOUND,      /**< Not found */
    UBTEDU_RC_WRONG_PARAM,    /**< Wrong parameter */


    UBTEDU_RC_SOCKET_FAILED = 100,    /**< Socket error */
    UBTEDU_RC_SOCKET_NORESOURCE,      /**< No resource when sending message out */
    UBTEDU_RC_SOCKET_TIMEOUT,         /**< Recevied message timeout */
    UBTEDU_RC_SOCKET_ENCODE_FAILED,   /**< Encode the message failed */
    UBTEDU_RC_SOCKET_DECODE_FAILED,   /**< Decode the message failed */
    UBTEDU_RC_SOCKET_ENCODE_ERROR,    /**< Encode the message error */
    UBTEDU_RC_SOCKET_DECODE_ERROR,    /**< Decode the message error. It is possible that received a wrong message */
    UBTEDU_RC_SOCKET_SENDERROR,       /**< Error when sending message out */

    UBTEDU_RC_VOICE_FAILED,           /**< Voice recognition failed */
    UBTEDU_RC_VOICE_GRAMMAR_ERROR,    /**< Voiice recognition grammer error */
    UBTEDU_RC_VOICE_AIUIDECODE_ERROR, /**< Decode AIUI message failed */
    UBTEDU_RC_LAST                    /**< The last return value */
} UBTEDU_RC_T;

typedef enum
{
    UBTEDU_ROBOT_SOFTVERSION_TYPE_STM32 = 0,    /**< Embedded system version */
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS1,      /**< Servos' version */
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS2,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS3,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS4,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS5,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS6,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS7,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS8,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS9,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS10,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS11,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS12,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS13,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS14,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS15,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS16,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SERVOS17,
    UBTEDU_ROBOT_SOFTVERSION_TYPE_SDK = 30,         /**< SDK version */
    UBTEDU_ROBOT_SOFTVERSION_TYPE_RASPI = 31,       /**< Robot management application version */
    UBTEDU_ROBOT_SOFTVERSION_TYPE_INVALID       /**< Invalid type */
} UBTEDU_ROBOT_SOFTVERSION_TYPE_e;
typedef struct _RobotServo
{
    int SERVO1_ANGLE;	/**< The 1st servo's angle */
    int SERVO2_ANGLE;	/**< The 2nd servo's angle */
    int SERVO3_ANGLE;	/**< The 3rd servo's angle */
    int SERVO4_ANGLE;	/**< The 4th servo's angle */
    int SERVO5_ANGLE;	/**< The 5th servo's angle */
    int SERVO6_ANGLE;	/**< The 6th servo's angle */
    int SERVO7_ANGLE;	/**< The 7th servo's angle */
    int SERVO8_ANGLE;	/**< The 8th servo's angle */
    int SERVO9_ANGLE;	/**< The 9th servo's angle */
    int SERVO10_ANGLE;	/**< The 10th servo's angle */
    int SERVO11_ANGLE;	/**< The 11th servo's angle */
    int SERVO12_ANGLE;	/**< The 12th servo's angle */
    int SERVO13_ANGLE;	/**< The 13th servo's angle */
    int SERVO14_ANGLE;	/**< The 14th servo's angle */
    int SERVO15_ANGLE;	/**< The 15th servo's angle */
    int SERVO16_ANGLE;	/**< The 16th servo's angle */
    int SERVO17_ANGLE;	/**< The 17th servo's angle */
} UBTEDU_ROBOTSERVO_T;
typedef struct _RobotInfo
{
    char acName[UBTEDU_ROBOT_NAME_LEN];
    char acIPAddr[UBTEDU_ROBOT_IP_ADDR_LEN];
} UBTEDU_ROBOTINFO_T;
typedef struct _RobotGyroSensor
{
    double  dGyroxValue; /**< Gyro x value */
    double  dGyroyValue; /**< Gyro y value */
    double  dGyrozValue; /**< Gyro z value */
    double  dAccexValue; /**< accelerate x value */
    double  dAcceyValue; /**< accelerate y value */
    double  dAccezValue; /**< accelerate z value */
    double  dCompassxValue; /**< compass x value */
    double  dCompassyValue; /**< compass y value */
    double  dCompasszValue; /**< compass z value */
    double  dEulerxValue; /**< euler x value */
    double  dEuleryValue; /**< euler y value */
    double  dEulerzValue; /**< euler z value */
} UBTEDU_ROBOTGYRO_SENSOR_T;
typedef struct _RobotEnvSensor
{

    int iTempValue;      /**<  temperature value */
    int iHumiValue;      /**<  humidity value */
    int iPresValue;      /**<  pressure value */
	
} UBTEDU_ROBOTENV_SENSOR_T;
typedef struct _RobotRaspPiBoardSensor
{
    int iValue;         /**<    Board temperature */
} UBTEDU_ROBOTRASPBOARD_SENSOR_T;
typedef struct _RobotUltrasonicSensor
{
    int iValue;         /**<    The distance via ultrasonic sensor */
} UBTEDU_ROBOTULTRASONIC_SENSOR_T;
typedef struct _RobotInfraredSensor
{
    int iValue;         /**<    The distance via infrared sensor */
} UBTEDU_ROBOTINFRARED_SENSOR_T;
typedef struct _RobotTouchSensor
{
    int iValue;         /**<    The Touch  sensor */
} UBTEDU_ROBOTTOUCH_SENSOR_T;
typedef struct _RobotColorSensor
{
    int iRedValue;         /**<    The red value of color sensor */
    int iGreenValue;         /**<    The Green value of color sensor */
    int iBlueValue;         /**<    The Bluevalue of color sensor */
    int iClearValue;         /**<    The Clear value of color sensor */
} UBTEDU_ROBOTCOLOR_SENSOR_T;
typedef struct _RobotPressureSensor
{
    int iValue;         /**<    The Pressure via Pressure sensor */
} UBTEDU_ROBOTPRESSURE_SENSOR_T;
typedef struct _RobotBatteryInfo
{
    int iValue;      /**<    RobotBatteryInfo */
} UBTEDU_ROBOT_Battery_T;


%{
#include "RobotApi.h"

extern UBTEDU_RC_T ubtRobotInitialize();
extern UBTEDU_RC_T ubtGetSWVersion(UBTEDU_ROBOT_SOFTVERSION_TYPE_e eType, char *pcVersion, int iVersionLen);
extern UBTEDU_RC_T ubtGetRobotStatus(UBTEDU_ROBOT_STATUS_TYPE_e eType, void *piStatus);
extern UBTEDU_RC_T ubtCheckAPPStatus(char *pcBuf, int iWaitTime);
extern UBTEDU_RC_T ubtDetectVoiceMsg(char *pcBuf, int iTimeout);
extern UBTEDU_RC_T ubtGetRobotServo(UBTEDU_ROBOTSERVO_T *servoAngle);
extern UBTEDU_RC_T ubtSetRobotServo(UBTEDU_ROBOTSERVO_T *servoAngle, int iTime);
extern UBTEDU_RC_T ubtSetRobotVolume(int iVolume);
extern UBTEDU_RC_T ubtSetRobotMotion(char *pcType, char *pcDirect, int iSpeed, int iRepeat);
extern UBTEDU_RC_T ubtReadSensorValue(char *pcSensorType, void *pValue, int iValueLen);
extern UBTEDU_RC_T ubtReadSensorValueByAddr(char *pcSensorType, int iAddr, void *pValue, int iValueLen);
extern UBTEDU_RC_T ubtSetRobotLED(char *pcType, char *pcColor, char *pcMode);
extern UBTEDU_RC_T ubtStartRobotAction(char *pcName, int iRepeat);
extern UBTEDU_RC_T ubtStopRobotAction(void);
extern UBTEDU_RC_T ubtVoiceStart();
extern UBTEDU_RC_T ubtVoiceStop();
extern UBTEDU_RC_T ubtVoiceTTS(int isInterrputed, char *pcTTS);
extern UBTEDU_RC_T ubtPlayMusic(char * pcPlayMusicType, char *pcName);
extern UBTEDU_RC_T ubtGetMusicList(char *pacMusicName[], int iEachMusicNameLen,int iMusicNameNum, int *piIndex);
extern UBTEDU_RC_T ubtEventDetect(char *pcEventType, char *pcValue, int iTimeout);
extern UBTEDU_RC_T ubtFaceCompare(int iTimeout, char* pcValue);
extern UBTEDU_RC_T ubtVisionDetect(char *pcVisionType, char *pcValue, int iTimeout);
extern UBTEDU_RC_T ubtTakeAPhoto(char *pacPhotoName, int iPhotoNameLen);
extern UBTEDU_RC_T ubtTransmitCMD(char *pcRemoteCmd, char *pcRemoteCmdRetData, int iRemoteCmdRetDataLen);
extern UBTEDU_RC_T ubtReportStatusToApp(char *pcName, char *pcString);
extern UBTEDU_RC_T ubtRobotDiscovery(char *pcAccount, int iMaxTimes, UBTEDU_ROBOTINFO_T *pstRobotInfo);
extern UBTEDU_RC_T ubtRobotConnect(char *pcAccount, char *pcVersion, char *pcIPAddr);
extern UBTEDU_RC_T ubtRobotDisconnect(char *pcAccount, char *pcVersion, char *pcIPAddr);
extern UBTEDU_RC_T ubtOpenCameraStream(char *pcMode,int iPosX,int iPosY,int iViewW,int iViewH);
extern UBTEDU_RC_T ubtCloseCameraSteam();
extern UBTEDU_RC_T ubtCaptureDLPhoto(char* pcDataPath);
extern UBTEDU_RC_T ubtAddDLSample(int iType, char* pcTagName, char* pcData);
extern UBTEDU_RC_T ubtFaceAgeGender(int iTimeout, char* pcGender, char* pcAge);
extern UBTEDU_RC_T ubtDeleteDLSample(int iType, char* pcTagName);
extern UBTEDU_RC_T ubtResetDLSample(int iType);
extern void ubtRobotDeinitialize();

%}
#include "RobotApi.h"

extern UBTEDU_RC_T ubtRobotInitialize();
extern UBTEDU_RC_T ubtGetSWVersion(UBTEDU_ROBOT_SOFTVERSION_TYPE_e eType, char *pcVersion, int iVersionLen);
extern UBTEDU_RC_T ubtGetRobotStatus(UBTEDU_ROBOT_STATUS_TYPE_e eType, void *piStatus);
extern UBTEDU_RC_T ubtCheckAPPStatus(char *pcBuf, int iWaitTime);
extern UBTEDU_RC_T ubtDetectVoiceMsg(char *pcBuf, int iTimeout);
extern UBTEDU_RC_T ubtGetRobotServo(UBTEDU_ROBOTSERVO_T *servoAngle);
extern UBTEDU_RC_T ubtSetRobotServo(UBTEDU_ROBOTSERVO_T *servoAngle, int iTime);
extern UBTEDU_RC_T ubtSetRobotVolume(int iVolume);
extern UBTEDU_RC_T ubtSetRobotMotion(char *pcType, char *pcDirect, int iSpeed, int iRepeat);
extern UBTEDU_RC_T ubtReadSensorValue(char *pcSensorType, void *pValue, int iValueLen);
extern UBTEDU_RC_T ubtReadSensorValueByAddr(char *pcSensorType, int iAddr, void *pValue, int iValueLen);
extern UBTEDU_RC_T ubtSetRobotLED(char *pcType, char *pcColor, char *pcMode);
extern UBTEDU_RC_T ubtStartRobotAction(char *pcName, int iRepeat);
extern UBTEDU_RC_T ubtStopRobotAction(void);
extern UBTEDU_RC_T ubtVoiceStart();
extern UBTEDU_RC_T ubtVoiceStop();
extern UBTEDU_RC_T ubtVoiceTTS(int isInterrputed, char *pcTTS);
extern UBTEDU_RC_T ubtPlayMusic(char * pcPlayMusicType, char *pcName);
extern UBTEDU_RC_T ubtGetMusicList(char *pacMusicName[], int iEachMusicNameLen,int iMusicNameNum, int *piIndex);
extern UBTEDU_RC_T ubtEventDetect(char *pcEventType, char *pcValue, int iTimeout);
extern UBTEDU_RC_T ubtFaceCompare(int iTimeout, char* pcValue);
extern UBTEDU_RC_T ubtVisionDetect(char *pcVisionType, char *pcValue, int iTimeout);
extern UBTEDU_RC_T ubtTakeAPhoto(char *pacPhotoName, int iPhotoNameLen);
extern UBTEDU_RC_T ubtTransmitCMD(char *pcRemoteCmd, char *pcRemoteCmdRetData, int iRemoteCmdRetDataLen);
extern UBTEDU_RC_T ubtReportStatusToApp(char *pcName, char *pcString);
extern UBTEDU_RC_T ubtRobotDiscovery(char *pcAccount, int iMaxTimes, UBTEDU_ROBOTINFO_T *pstRobotInfo);
extern UBTEDU_RC_T ubtRobotConnect(char *pcAccount, char *pcVersion, char *pcIPAddr);
extern UBTEDU_RC_T ubtRobotDisconnect(char *pcAccount, char *pcVersion, char *pcIPAddr);
extern UBTEDU_RC_T ubtOpenCameraStream(char *pcMode,int iPosX,int iPosY,int iViewW,int iViewH);
extern UBTEDU_RC_T ubtCloseCameraSteam();
extern UBTEDU_RC_T ubtCaptureDLPhoto(char* pcDataPath);
extern UBTEDU_RC_T ubtAddDLSample(int iType, char* pcTagName, char* pcData);
extern UBTEDU_RC_T ubtFaceAgeGender(int iTimeout, char* pcGender, char* pcAge);
extern UBTEDU_RC_T ubtDeleteDLSample(int iType, char* pcTagName);
extern UBTEDU_RC_T ubtResetDLSample(int iType);
extern void ubtRobotDeinitialize();
