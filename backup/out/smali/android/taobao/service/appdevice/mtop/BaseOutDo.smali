.class public abstract Landroid/taobao/service/appdevice/mtop/BaseOutDo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/taobao/service/appdevice/mtop/IMTOPDataObject;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/mtop/BaseOutDo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getData()Ljava/lang/Object;
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/mtop/BaseOutDo;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/mtop/BaseOutDo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/mtop/BaseOutDo;->a:Ljava/lang/String;

    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/mtop/BaseOutDo;->c:[Ljava/lang/String;

    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/mtop/BaseOutDo;->b:Ljava/lang/String;

    return-void
.end method
