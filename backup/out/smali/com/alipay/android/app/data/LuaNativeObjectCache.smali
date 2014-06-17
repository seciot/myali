.class public Lcom/alipay/android/app/data/LuaNativeObjectCache;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaNativeObjectCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    return-void
.end method
