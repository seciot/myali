package android.taobao.service.appdevice.net.async;

import android.os.Message;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class BinaryHttpResponseHandler extends AsyncHttpResponseHandler
{
  private static String[] a = { "image/jpeg", "image/png" };

  public BinaryHttpResponseHandler()
  {
  }

  public BinaryHttpResponseHandler(String[] paramArrayOfString)
  {
    this();
    a = paramArrayOfString;
  }

  void handleFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    onFailure(paramThrowable, paramArrayOfByte);
  }

  void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
      return;
    case 0:
      handleSuccessMessage((byte[])paramMessage.obj);
      return;
    case 1:
    }
    Object[] arrayOfObject = (Object[])paramMessage.obj;
    handleFailureMessage((Throwable)arrayOfObject[0], (byte[])arrayOfObject[1]);
  }

  void handleSuccessMessage(byte[] paramArrayOfByte)
  {
    onSuccess(paramArrayOfByte);
  }

  public void onFailure(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    onFailure(paramThrowable);
  }

  public void onSuccess(byte[] paramArrayOfByte)
  {
  }

  public void sendFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }

  void sendResponseMessage(HttpResponse paramHttpResponse)
  {
    int i = 0;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    Header[] arrayOfHeader = paramHttpResponse.getHeaders("Content-Type");
    if (arrayOfHeader.length != 1)
    {
      sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), "None, or more than one, Content-Type Header found!"), null);
      return;
    }
    Header localHeader = arrayOfHeader[0];
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    for (int k = 0; k < j; k++)
      if (arrayOfString[k].equals(localHeader.getValue()))
        i = 1;
    if (i == 0)
    {
      sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), "Content-Type not allowed!"), null);
      return;
    }
    while (true)
    {
      try
      {
        HttpEntity localHttpEntity = paramHttpResponse.getEntity();
        if (localHttpEntity != null)
        {
          localBufferedHttpEntity = new BufferedHttpEntity(localHttpEntity);
          byte[] arrayOfByte2 = EntityUtils.toByteArray(localBufferedHttpEntity);
          arrayOfByte1 = arrayOfByte2;
          if (localStatusLine.getStatusCode() >= 300)
          {
            sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), arrayOfByte1);
            return;
          }
        }
      }
      catch (IOException localIOException)
      {
        sendFailureMessage(localIOException, null);
        byte[] arrayOfByte1 = null;
        continue;
        sendSuccessMessage(arrayOfByte1);
        return;
      }
      BufferedHttpEntity localBufferedHttpEntity = null;
    }
  }

  public void sendSuccessMessage(byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(0, paramArrayOfByte));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.BinaryHttpResponseHandler
 * JD-Core Version:    0.6.2
 */