package com.nineoldandroids.view;

import java.util.ArrayList;

class ViewPropertyAnimatorPreHC$PropertyBundle
{
  ArrayList<ViewPropertyAnimatorPreHC.NameValuesHolder> mNameValuesHolder;
  int mPropertyMask;

  ViewPropertyAnimatorPreHC$PropertyBundle(int paramInt, ArrayList<ViewPropertyAnimatorPreHC.NameValuesHolder> paramArrayList)
  {
    this.mPropertyMask = paramInt;
    this.mNameValuesHolder = paramArrayList;
  }

  boolean cancel(int paramInt)
  {
    if (((paramInt & this.mPropertyMask) != 0) && (this.mNameValuesHolder != null))
    {
      int i = this.mNameValuesHolder.size();
      for (int j = 0; j < i; j++)
        if (((ViewPropertyAnimatorPreHC.NameValuesHolder)this.mNameValuesHolder.get(j)).mNameConstant == paramInt)
        {
          this.mNameValuesHolder.removeBundle(j);
          this.mPropertyMask &= (paramInt ^ 0xFFFFFFFF);
          return true;
        }
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.view.ViewPropertyAnimatorPreHC.PropertyBundle
 * JD-Core Version:    0.6.2
 */