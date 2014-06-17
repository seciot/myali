.class public Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;
.super Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;
.source "BarcodePayActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "barcode_pay_activity"
.end annotation


# instance fields
.field k:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field l:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "barcode_image"
    .end annotation
.end field

.field m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "qrcode_image"
    .end annotation
.end field

.field n:Landroid/widget/ProgressBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "progress_horizontal"
    .end annotation
.end field

.field o:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "state_text_container"
    .end annotation
.end field

.field p:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "state_text"
    .end annotation
.end field

.field q:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "deviceAuthLayout2"
    .end annotation
.end field

.field r:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "barcode_main"
    .end annotation
.end field

.field s:Landroid/content/BroadcastReceiver;

.field t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

.field u:Landroid/widget/PopupWindow;

.field v:Landroid/widget/ScrollView;

.field w:Landroid/view/View$OnClickListener;

.field x:Landroid/widget/PopupWindow;

.field y:Landroid/os/PowerManager$WakeLock;

.field private z:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/a;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->z:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/barcode/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/f;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->s:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/barcode/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/e;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->w:Landroid/view/View$OnClickListener;

    .line 605
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->x:Landroid/widget/PopupWindow;

    .line 635
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a()V

    const-string/jumbo v0, "OTP"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/onsitepay/exception/FacepaymentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p()V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u8fde\u7f51\u540e\u70b9\u51fb\u5237\u65b0\u3002"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 262
    if-eqz p3, :cond_2

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u5237\u65b0\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->c:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n()V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDynamicId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dynamicIdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->dismissProgressDialog()V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o()V

    .line 275
    if-eqz p1, :cond_3

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u5237\u65b0\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->j()V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "CODE_128"

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->l:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 284
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q()V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->reFresh()V

    .line 289
    :cond_1
    return-void

    .line 265
    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a()V

    const/4 v0, 0x1

    const-string/jumbo v1, "OTP"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/onsitepay/exception/FacepaymentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p()V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u8fde\u7f51\u540e\u70b9\u51fb\u5237\u65b0\u3002"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_0

    .line 439
    :goto_0
    monitor-exit p0

    return-void

    .line 413
    :cond_0
    :try_start_1
    sget v0, Lcom/alipay/mobile/onsitepay/e;->b:I

    .line 414
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 415
    sget v0, Lcom/alipay/mobile/onsitepay/d;->i:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    new-instance v2, Lcom/alipay/mobile/onsitepay/payer/barcode/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/onsitepay/payer/barcode/b;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setOnRefreshEventListener(Lcom/alipay/mobile/onsitepay/payer/barcode/v;)V

    .line 427
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    const/16 v2, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setVisibility(I)V

    .line 433
    new-instance v0, Lcom/alipay/mobile/onsitepay/payer/barcode/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/c;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->r()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->z:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->h:Z

    return v0
.end method

.method static synthetic k(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->z:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->z:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->i()V

    .line 402
    return-void
.end method

.method private q()V
    .locals 9

    .prologue
    .line 443
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 445
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 446
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " height:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Qrcode width:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Qrcode height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "QR_CODE"

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    invoke-virtual {v4}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    invoke-virtual {v5}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()V
    .locals 5

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "barcodePromptFlag"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 614
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/e;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 615
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->x:Landroid/widget/PopupWindow;

    .line 617
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->x:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 618
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->x:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->x:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 620
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->x:Landroid/widget/PopupWindow;

    const/16 v2, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 621
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    sget v1, Lcom/alipay/mobile/onsitepay/d;->J:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 623
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private s()Z
    .locals 3

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "barcodePromptFlag"

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "barcodePromptFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 3
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 293
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;->success:Z

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;->dynamicId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u52a8\u6001ID\u6210\u529f mDynamicId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    const/4 v0, 0x1

    const-string/jumbo v1, "SC"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(ZLjava/lang/String;Z)V

    .line 307
    :goto_1
    return-void

    .line 295
    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;->dynamicId:Ljava/lang/String;

    goto :goto_0

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p()V

    .line 304
    const-string/jumbo v0, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 23
    .parameter
    .parameter

    .prologue
    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAutoPaySuccess requestType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " onAutoPaySuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    const-string/jumbo v2, "amount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string/jumbo v3, "promoUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 321
    const-string/jumbo v3, "dynamicId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 325
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6210\u529f\u4ed8\u6b3e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 327
    :goto_0
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "C2B"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v2, 0x5

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v18, "kf"

    aput-object v18, v14, v2

    const/4 v2, 0x1

    aput-object p2, v14, v2

    const/4 v2, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->j:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v2

    const/4 v2, 0x3

    const-string/jumbo v18, "y"

    aput-object v18, v14, v2

    const/4 v2, 0x4

    const-string/jumbo v18, "alipayclient"

    aput-object v18, v14, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 331
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "ZD"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v2, 0x5

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v18, "kf"

    aput-object v18, v14, v2

    const/4 v2, 0x1

    const-string/jumbo v18, "orderpay"

    aput-object v18, v14, v2

    const/4 v2, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->j:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v2

    const/4 v2, 0x3

    const-string/jumbo v18, "y"

    aput-object v18, v14, v2

    const/4 v2, 0x4

    const-string/jumbo v18, "alipayclient"

    aput-object v18, v14, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->z:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const-string/jumbo v3, "needPayResultAck"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string/jumbo v3, "paysucceedMsg"

    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string/jumbo v3, "dynamicId"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v3, "promoUrl"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 342
    return-void

    .line 325
    :cond_1
    const-string/jumbo v2, ""

    move-object v15, v2

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 562
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->v:Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    .line 563
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->ext_flow_tip_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->v:Landroid/widget/ScrollView;

    .line 565
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getMeasuredHeight()I

    move-result v0

    .line 568
    if-gtz v0, :cond_0

    .line 569
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 570
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->measure(II)V

    .line 572
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getMeasuredHeight()I

    move-result v0

    .line 574
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "measuredHeight = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->r:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->v:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->v:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 579
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 580
    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->flow_network_error:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 582
    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->tryAgin:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/onsitepay/payer/barcode/d;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/d;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->v:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 594
    return-void
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAutoPaySuccess requestType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " onAutoPaySuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->f()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 349
    const-string/jumbo v4, "fromAppid"

    const-string/jumbo v5, "20000056"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string/jumbo v4, "responseStr"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v4, "extern_token"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-class v2, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->i()V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 359
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "C2B"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v2, 0x5

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v15, "kf"

    aput-object v15, v14, v2

    const/4 v2, 0x1

    aput-object p2, v14, v2

    const/4 v2, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->j:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v2

    const/4 v2, 0x3

    const-string/jumbo v15, "y"

    aput-object v15, v14, v2

    const/4 v2, 0x4

    const-string/jumbo v15, "alipayclient"

    aput-object v15, v14, v2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 369
    const-string/jumbo v2, "payeeName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    .line 371
    :goto_0
    const-string/jumbo v3, "payeeAccount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    const-string/jumbo v4, "headImageUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    const-string/jumbo v5, "dynamicId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 374
    const-string/jumbo v6, ""

    const-string/jumbo v7, "otp"

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->f()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "dynamicId"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "extern_token"

    invoke-virtual {v9, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "fromAppid"

    const-string/jumbo v8, "20000056"

    invoke-virtual {v9, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "payeeName"

    invoke-virtual {v9, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "payeeUserId"

    invoke-virtual {v9, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "headImageUrl"

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "payeeAccount"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "c2cpaytype"

    invoke-virtual {v9, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v2, v3, v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "kf"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "C2C"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->g()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "kf"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->j:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "alipayclient"

    aput-object v16, v14, v15

    invoke-static/range {v2 .. v14}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 379
    return-void

    .line 369
    :cond_0
    const-string/jumbo v2, "payeeName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected d()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 475
    :try_start_0
    new-instance v0, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;

    invoke-direct {v0}, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;-><init>()V

    .line 476
    const-string/jumbo v1, "bar_code"

    iput-object v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;->type:Ljava/lang/String;

    .line 477
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->getDynamicId(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;)Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

    move-result-object v0

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->g:J

    .line 479
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e:Ljava/lang/String;

    .line 483
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->b()V

    goto :goto_0
.end method

.method protected final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e()Lcom/alipay/mobile/security/otp/OtpManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_BARCODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/otp/OtpManager;->getDynamicOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final k()Z
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method protected final m()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x5a0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->l:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aH:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/g;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->l:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/h;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setOnRefreshEventListener(Lcom/alipay/mobile/onsitepay/payer/barcode/v;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/i;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setOnRefreshEventListener(Lcom/alipay/mobile/onsitepay/payer/barcode/v;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->m:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/j;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->l:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/k;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/k;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/l;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/m;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Landroid/content/BroadcastReceiver;)V

    .line 236
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->l()V

    .line 237
    return-void
.end method

.method protected n()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->h:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public o()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    .line 148
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 149
    const-string/jumbo v1, "20000056"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    .line 150
    const-string/jumbo v1, "20000056Home"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    .line 541
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onDestroy()V

    .line 542
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p()V

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 519
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    .line 520
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onPause()V

    .line 521
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onResume()V

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string/jumbo v2, "My Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->y:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->z:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 550
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onStart()V

    .line 555
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Landroid/content/BroadcastReceiver;)V

    .line 556
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->p()V

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->b(Landroid/content/BroadcastReceiver;)V

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 530
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->onStop()V

    .line 531
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onWindowFocusChanged hasFocus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " checkSkip()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->r()V

    .line 160
    :cond_0
    return-void
.end method
