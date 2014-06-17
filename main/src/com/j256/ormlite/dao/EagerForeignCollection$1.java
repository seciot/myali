package com.j256.ormlite.dao;

import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
import java.util.List;

class EagerForeignCollection$1
  implements CloseableIterator<T>
{
  private int a = -1;

  EagerForeignCollection$1(EagerForeignCollection paramEagerForeignCollection)
  {
  }

  public void close()
  {
  }

  public T current()
  {
    if (this.a < 0)
      this.a = 0;
    if (this.a >= EagerForeignCollection.access$000(this.this$0).size())
      return null;
    return EagerForeignCollection.access$000(this.this$0).get(this.a);
  }

  public T first()
  {
    this.a = 0;
    if (this.a >= EagerForeignCollection.access$000(this.this$0).size())
      return null;
    return EagerForeignCollection.access$000(this.this$0).get(0);
  }

  public DatabaseResults getRawResults()
  {
    return null;
  }

  public boolean hasNext()
  {
    return 1 + this.a < EagerForeignCollection.access$000(this.this$0).size();
  }

  public T moveRelative(int paramInt)
  {
    this.a = (paramInt + this.a);
    if ((this.a < 0) || (this.a >= EagerForeignCollection.access$000(this.this$0).size()))
      return null;
    return EagerForeignCollection.access$000(this.this$0).get(this.a);
  }

  public void moveToNext()
  {
    this.a = (1 + this.a);
  }

  public T next()
  {
    this.a = (1 + this.a);
    return EagerForeignCollection.access$000(this.this$0).get(this.a);
  }

  public T nextThrow()
  {
    this.a = (1 + this.a);
    if (this.a >= EagerForeignCollection.access$000(this.this$0).size())
      return null;
    return EagerForeignCollection.access$000(this.this$0).get(this.a);
  }

  public T previous()
  {
    this.a = (-1 + this.a);
    if ((this.a < 0) || (this.a >= EagerForeignCollection.access$000(this.this$0).size()))
      return null;
    return EagerForeignCollection.access$000(this.this$0).get(this.a);
  }

  public void remove()
  {
    if (this.a < 0)
      throw new IllegalStateException("next() must be called before remove()");
    if (this.a >= EagerForeignCollection.access$000(this.this$0).size())
      throw new IllegalStateException("current results position (" + this.a + ") is out of bounds");
    Object localObject = EagerForeignCollection.access$000(this.this$0).remove(this.a);
    if (this.this$0.dao != null);
    try
    {
      this.this$0.dao.delete(localObject);
      return;
    }
    catch (SQLException localSQLException)
    {
      throw new RuntimeException(localSQLException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.EagerForeignCollection.1
 * JD-Core Version:    0.6.2
 */