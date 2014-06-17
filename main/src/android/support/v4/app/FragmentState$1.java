package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class FragmentState$1
  implements Parcelable.Creator<FragmentState>
{
  public final FragmentState createFromParcel(Parcel paramParcel)
  {
    return new FragmentState(paramParcel);
  }

  public final FragmentState[] newArray(int paramInt)
  {
    return new FragmentState[paramInt];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentState.1
 * JD-Core Version:    0.6.2
 */