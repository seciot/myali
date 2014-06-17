package android.support.v13.app;

import android.app.Fragment;
import android.os.Build.VERSION;

public class FragmentCompat
{
  static final FragmentCompat.FragmentCompatImpl IMPL = new FragmentCompat.BaseFragmentCompatImpl();

  static
  {
    if (Build.VERSION.SDK_INT >= 15)
    {
      IMPL = new FragmentCompat.ICSMR1FragmentCompatImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new FragmentCompat.ICSFragmentCompatImpl();
      return;
    }
  }

  public static void setMenuVisibility(Fragment paramFragment, boolean paramBoolean)
  {
    IMPL.setMenuVisibility(paramFragment, paramBoolean);
  }

  public static void setUserVisibleHint(Fragment paramFragment, boolean paramBoolean)
  {
    IMPL.setUserVisibleHint(paramFragment, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v13.app.FragmentCompat
 * JD-Core Version:    0.6.2
 */