package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class ParcelableCompat$CompatCreator<T>
  implements Parcelable.Creator<T>
{
  final ParcelableCompatCreatorCallbacks<T> mCallbacks;

  public ParcelableCompat$CompatCreator(ParcelableCompatCreatorCallbacks<T> paramParcelableCompatCreatorCallbacks)
  {
    this.mCallbacks = paramParcelableCompatCreatorCallbacks;
  }

  public T createFromParcel(Parcel paramParcel)
  {
    return this.mCallbacks.createFromParcel(paramParcel, null);
  }

  public T[] newArray(int paramInt)
  {
    return this.mCallbacks.newArray(paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.os.ParcelableCompat.CompatCreator
 * JD-Core Version:    0.6.2
 */