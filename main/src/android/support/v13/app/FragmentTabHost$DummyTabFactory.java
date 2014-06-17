package android.support.v13.app;

import android.content.Context;
import android.view.View;
import android.widget.TabHost.TabContentFactory;

class FragmentTabHost$DummyTabFactory
  implements TabHost.TabContentFactory
{
  private final Context a;

  public FragmentTabHost$DummyTabFactory(Context paramContext)
  {
    this.a = paramContext;
  }

  public View createTabContent(String paramString)
  {
    View localView = new View(this.a);
    localView.setMinimumWidth(0);
    localView.setMinimumHeight(0);
    return localView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v13.app.FragmentTabHost.DummyTabFactory
 * JD-Core Version:    0.6.2
 */