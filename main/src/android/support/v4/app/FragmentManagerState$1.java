package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class FragmentManagerState$1
  implements Parcelable.Creator<FragmentManagerState>
{
  public final FragmentManagerState createFromParcel(Parcel paramParcel)
  {
    return new FragmentManagerState(paramParcel);
  }

  public final FragmentManagerState[] newArray(int paramInt)
  {
    return new FragmentManagerState[paramInt];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentManagerState.1
 * JD-Core Version:    0.6.2
 */