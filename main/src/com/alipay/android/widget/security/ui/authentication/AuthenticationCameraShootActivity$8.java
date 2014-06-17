package com.alipay.android.widget.security.ui.authentication;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class AuthenticationCameraShootActivity$8 extends GestureDetector.SimpleOnGestureListener
{
  AuthenticationCameraShootActivity$8(AuthenticationCameraShootActivity paramAuthenticationCameraShootActivity)
  {
  }

  public boolean onDown(MotionEvent paramMotionEvent)
  {
    try
    {
      AuthenticationCameraShootActivity.e(this.a).handleTouchFocus();
      return super.onDown(paramMotionEvent);
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCameraShootActivity.8
 * JD-Core Version:    0.6.2
 */