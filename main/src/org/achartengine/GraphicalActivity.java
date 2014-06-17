package org.achartengine;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import org.achartengine.chart.AbstractChart;

public class GraphicalActivity extends Activity
{
  private GraphicalView a;
  private AbstractChart b;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    this.b = ((AbstractChart)localBundle.getSerializable("chart"));
    this.a = new GraphicalView(this, this.b);
    String str = localBundle.getString("title");
    if (str == null)
      requestWindowFeature(1);
    while (true)
    {
      setContentView(this.a);
      return;
      if (str.length() > 0)
        setTitle(str);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.GraphicalActivity
 * JD-Core Version:    0.6.2
 */