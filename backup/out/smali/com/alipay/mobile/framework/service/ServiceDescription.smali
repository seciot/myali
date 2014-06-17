.class public Lcom/alipay/mobile/framework/service/ServiceDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->b:Z

    return-void
.end method


# virtual methods
.method public getInterfaceClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isLazy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->b:Z

    return v0
.end method

.method public setInterfaceClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->a:Ljava/lang/String;

    return-void
.end method

.method public setLazy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->b:Z

    return-void
.end method
