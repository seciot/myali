package com.alipay.android.widget.security.ui.authentication;

import android.content.Context;
import android.hardware.Camera.ShutterCallback;
import android.media.AudioManager;

class CameraPreview$3
  implements Camera.ShutterCallback
{
  CameraPreview$3(CameraPreview paramCameraPreview)
  {
  }

  public void onShutter()
  {
    ((AudioManager)this.a.getContext().getSystemService("audio")).playSoundEffect(4);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CameraPreview.3
 * JD-Core Version:    0.6.2
 */