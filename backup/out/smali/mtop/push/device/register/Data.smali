.class public Lmtop/push/device/register/Data;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/taobao/service/appdevice/mtop/IMTOPDataObject;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPush_key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmtop/push/device/register/Data;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setPush_key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmtop/push/device/register/Data;->a:Ljava/lang/String;

    return-void
.end method
