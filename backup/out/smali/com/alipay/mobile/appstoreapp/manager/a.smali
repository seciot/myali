.class final Lcom/alipay/mobile/appstoreapp/manager/a;
.super Ljava/lang/Object;
.source "AppManageServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/a;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/a;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->initConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/a;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->syncAppAndAutoUpdate()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_1
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
