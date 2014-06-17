.class public abstract Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# static fields
.field public static final UPDATE_ALL:I = 0x7

.field public static final UPDATE_DBARCODE:I = 0x1

.field public static final UPDATE_DQRCODE:I = 0x2

.field public static final UPDATE_DWAVE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAltText(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public abstract getDynamicCode()Ljava/lang/String;
.end method

.method public abstract getDynamicCodeWithPassId()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;Landroid/os/Handler;I)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onDestroy()V
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onRefresh()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setHandler(Landroid/os/Handler;)V
.end method

.method public abstract setPassId(Ljava/lang/String;)V
.end method

.method public abstract startGetDynamicCode(Ljava/lang/Object;)V
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
.end method
