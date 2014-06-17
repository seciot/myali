.class public Lmtop/push/device/register/Response;
.super Landroid/taobao/service/appdevice/mtop/BaseOutDo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lmtop/push/device/register/Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/taobao/service/appdevice/mtop/BaseOutDo;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmtop/push/device/register/Response;->a:Lmtop/push/device/register/Data;

    return-object v0
.end method

.method public setData(Lmtop/push/device/register/Data;)V
    .locals 0

    iput-object p1, p0, Lmtop/push/device/register/Response;->a:Lmtop/push/device/register/Data;

    return-void
.end method
