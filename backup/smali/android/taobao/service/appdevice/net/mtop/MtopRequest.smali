.class public Landroid/taobao/service/appdevice/net/mtop/MtopRequest;
.super Ljava/lang/Object;


# static fields
.field public static final SPLIT_STR:Ljava/lang/String; = "&"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getEcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getSId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTtId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public putParams(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->h:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public setEcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public setSId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setTtId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopRequest;->b:Ljava/lang/String;

    return-void
.end method
