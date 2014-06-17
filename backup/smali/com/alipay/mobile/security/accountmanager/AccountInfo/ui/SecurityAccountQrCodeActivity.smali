.class public Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_account_qrcode"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_qrcode_img"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_qrcode_warn1"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_qrcode_titlebar"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_qrcode_layout"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "empty_view"
    .end annotation
.end field

.field f:Landroid/view/View$OnClickListener;

.field private g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

.field private h:Ljava/lang/String;

.field private i:[B

.field private j:Ljava/util/Map;
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

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Bitmap;

.field private m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

.field private n:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->j:Ljava/util/Map;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/l;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/l;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->n:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;I)[B
    .locals 4

    const/16 v0, 0x64

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

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->i:[B

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private d()I
    .locals 9

    const v8, 0x1111111

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "shareSwitch"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    array-length v6, v5

    move v3, v1

    move v4, v0

    move v2, v1

    :goto_0
    if-ge v3, v6, :cond_1

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v7, 0x31

    if-ne v0, v7, :cond_0

    const/4 v0, 0x1

    :goto_1
    mul-int/lit8 v7, v4, 0x4

    shl-int/2addr v0, v7

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v0, v8

    or-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " j is 0x shareType"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    and-int v0, v1, v8

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->i:[B

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->n:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->putCacheQrCodeData(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->b()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const-wide v5, 0x3fe6666666666666L

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->dismissProgressDialog()V

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getRightButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$drawable;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "qrcode_tip"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->b()V

    goto :goto_2
.end method

.method public a(Ljava/util/Map;I)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ShareService;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/m;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;Lcom/alipay/mobile/framework/service/ShareService;Ljava/util/Map;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;-><init>(Landroid/content/Context;ILcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->n:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->n:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/n;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->n:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->show()V

    return-void
.end method

.method protected a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/common/share/ShareContent;->setImage([B)V

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

    const-string/jumbo v0, "20000019"

    invoke-virtual {p3, p2, p4, v0}, Lcom/alipay/mobile/framework/service/ShareService;->silentShare(Lcom/alipay/mobile/common/share/ShareContent;ILjava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->e:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/k;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/k;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected c()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->d()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getShareInfoMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->j:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->getQrcode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->k:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->j:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->j:Ljava/util/Map;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a(Ljava/util/Map;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

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

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->dismissProgressDialog()V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x1112

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->c()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->m:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->g:Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->saveQrImgToDCIM(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAccountQrCodeActivity;->a()V

    return-void
.end method
