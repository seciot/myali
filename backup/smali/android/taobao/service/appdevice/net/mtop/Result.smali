.class public Landroid/taobao/service/appdevice/net/mtop/Result;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRetDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->a:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->b:Ljava/lang/String;

    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->d:Ljava/lang/String;

    return-void
.end method

.method public setRetDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->c:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->a:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Result [isSuccess="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/mtop/Result;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
