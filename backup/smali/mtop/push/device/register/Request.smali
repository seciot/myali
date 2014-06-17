.class public Lmtop/push/device/register/Request;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/taobao/service/appdevice/mtop/IMTOPDataObject;
.implements Ljava/io/Serializable;


# static fields
.field public static final API_NAME:Ljava/lang/String; = "mtop.push.device.register"

.field public static final NEED_ECODE:Z = false

.field public static final version:Ljava/lang/String; = "4.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_info()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmtop/push/device/register/Request;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmtop/push/device/register/Request;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_info(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmtop/push/device/register/Request;->b:Ljava/lang/String;

    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmtop/push/device/register/Request;->a:Ljava/lang/String;

    return-void
.end method
