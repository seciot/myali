.class public Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "ShareSavePicThireBtnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "facepayee_layout_more_thire_btn"
.end annotation


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "change_avatar_operations"
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "save_picture_btn"
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "share_btn"
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "cancel_btn"
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

.field private g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Landroid/graphics/Bitmap;

.field private k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "ShareSavePicThireBtnActivity"

    sput-object v0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 139
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->f:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    .line 285
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;I)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x64

    .line 36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v2, 0x100

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    sget-object v2, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{[info=getByteArrByBitmap\u56fe\u7247\u5927\u4e8e30K],[msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;[B)[B
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->k:[B

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static c()Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)[B
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->k:[B

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->f:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-static {}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c()Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    .line 60
    sget-object v0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "qrCodeShowRs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/Map;I)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->dismissProgressDialog()V

    .line 144
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ShareService;

    .line 150
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    new-instance v2, Lcom/alipay/mobile/onsitepay/utils/b;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/mobile/onsitepay/utils/b;-><init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;Lcom/alipay/mobile/framework/service/ShareService;Ljava/util/Map;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;-><init>(Landroid/content/Context;ILcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->f:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->f:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    new-instance v1, Lcom/alipay/mobile/onsitepay/utils/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/utils/c;-><init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->f:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->show()V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 244
    return-void
.end method

.method protected a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p2, p1}, Lcom/alipay/mobile/common/share/ShareContent;->setImage([B)V

    .line 277
    sget-object v0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "imgLength="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    sget-object v0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/common/share/ShareContent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    const-string/jumbo v0, "20000019"

    invoke-virtual {p3, p2, p4, v0}, Lcom/alipay/mobile/framework/service/ShareService;->silentShare(Lcom/alipay/mobile/common/share/ShareContent;ILjava/lang/String;)V

    .line 280
    return-void
.end method

.method protected b()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/a;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)I

    move-result v0

    .line 105
    sget-object v1, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shareType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getShareInfoMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->h:Ljava/util/Map;

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->getQrcode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->i:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->j:Landroid/graphics/Bitmap;

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->h:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->h:Ljava/util/Map;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Ljava/util/Map;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    sget-object v1, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=getShareContent], ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->dismissProgressDialog()V

    .line 125
    throw v0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 82
    sget v1, Lcom/alipay/mobile/onsitepay/d;->au:I

    if-ne v0, v1, :cond_3

    .line 84
    sget-object v0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->j:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->c()Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->saveQrImgToDCIM(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/graphics/Bitmap;)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->finish()V

    .line 93
    :cond_2
    :goto_0
    return-void

    .line 86
    :cond_3
    sget v1, Lcom/alipay/mobile/onsitepay/d;->ax:I

    if-ne v0, v1, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b()V

    goto :goto_0

    .line 89
    :cond_4
    sget v1, Lcom/alipay/mobile/onsitepay/d;->o:I

    if-ne v0, v1, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->requestWindowFeature(I)Z

    .line 52
    return-void
.end method
