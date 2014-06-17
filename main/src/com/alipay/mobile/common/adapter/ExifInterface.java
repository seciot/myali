package com.alipay.mobile.common.adapter;

public class ExifInterface extends android.media.ExifInterface
{
  public static final String TAG_APERTURE = "FNumber";
  public static final String TAG_EXPOSURE_TIME = "ExposureTime";
  public static final String TAG_FOCAL_LENGTH = "FocalLength";
  public static final String TAG_GPS_ALTITUDE = "GPSAltitude";
  public static final String TAG_GPS_ALTITUDE_REF = "GPSAltitudeRef";
  public static final String TAG_GPS_DATESTAMP = "GPSDateStamp";
  public static final String TAG_GPS_PROCESSING_METHOD = "GPSProcessingMethod";
  public static final String TAG_GPS_TIMESTAMP = "GPSTimeStamp";
  public static final String TAG_ISO = "ISOSpeedRatings";

  public ExifInterface(String paramString)
  {
    super(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.adapter.ExifInterface
 * JD-Core Version:    0.6.2
 */