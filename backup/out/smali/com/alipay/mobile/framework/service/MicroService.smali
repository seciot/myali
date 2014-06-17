.class public abstract Lcom/alipay/mobile/framework/service/MicroService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/MicroContent;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/MicroService;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method public abstract create(Landroid/os/Bundle;)V
.end method

.method public abstract destroy(Landroid/os/Bundle;)V
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/MicroService;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method protected abstract onCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroy(Landroid/os/Bundle;)V
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 0

    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    return-void
.end method
