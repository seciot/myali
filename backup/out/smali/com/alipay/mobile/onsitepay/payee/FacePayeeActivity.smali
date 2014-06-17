.class public Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "FacePayeeActivity.java"

# interfaces
.implements Lcom/alipay/mobile/onsitepay/a/b/a;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "c2c_payee"
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/alipay/mobile/onsitepay/a/b/b;

.field private C:Lcom/alipay/mobile/onsitepay/a/b/c;

.field private D:Lcom/alipay/mobile/onsitepay/a/b/d;

.field private E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

.field private F:I

.field a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_barcode"
    .end annotation
.end field

.field protected c:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_info"
    .end annotation
.end field

.field protected d:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "show_barcode_layout"
    .end annotation
.end field

.field protected e:Landroid/widget/ImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "show_barcode_img"
    .end annotation
.end field

.field protected f:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "sendtab_barcode_linearlayout"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "acousticSensingTextView"
    .end annotation
.end field

.field protected h:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_barcode_layout"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_support_sonic"
    .end annotation
.end field

.field protected j:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "send_tab_layout"
    .end annotation
.end field

.field k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:Z

.field private t:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

.field private u:Landroid/os/PowerManager$WakeLock;

.field private v:Landroid/os/Vibrator;

.field private w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

.field private x:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->y:Ljava/util/Map;

    .line 124
    iput-boolean v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->A:Z

    .line 125
    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    .line 127
    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->B:Lcom/alipay/mobile/onsitepay/a/b/b;

    .line 128
    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->C:Lcom/alipay/mobile/onsitepay/a/b/c;

    .line 129
    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->D:Lcom/alipay/mobile/onsitepay/a/b/d;

    .line 646
    iput v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->F:I

    .line 710
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->m:Z

    .line 827
    iput-boolean v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->n:Z

    .line 828
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->o:Z

    .line 838
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->p:I

    .line 839
    iput v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->q:I

    .line 840
    iput v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->r:I

    .line 841
    iput-boolean v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->s:Z

    .line 843
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 626
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d(Ljava/lang/String;)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    move-result-object v5

    .line 628
    if-eqz v5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 629
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :goto_0
    monitor-exit p0

    return-object v5

    .line 633
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v1, 0x0

    aget-object v5, v0, v1

    :cond_1
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 639
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v3, v2

    move v0, v1

    .line 638
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Z)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Z)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    move-result-object v0

    :cond_5
    move-object v5, v0

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    rem-long/2addr v0, v2

    long-to-int v1, v0

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    array-length v2, v2

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    rem-int/lit8 v3, v0, 0x9

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->isUsed()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private a(Z)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;
    .locals 5
    .parameter

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 581
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 582
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->isSuccessed()Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 583
    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aget-object v0, v0, v1

    .line 581
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getNum()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getNum()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 587
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aget-object v0, v0, v1

    goto :goto_1

    .line 592
    :cond_2
    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopSonicReceive"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->t:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopReceiveData()V

    .line 548
    return-void
.end method

.method private a(Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 716
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->userId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d(Ljava/lang/String;)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->isSuccessed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->payerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->headImageUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->payerName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c()V

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, -0x4bddddde

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/onsitepay/c;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/f;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d()V

    .line 651
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->F:I

    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->v:Landroid/os/Vibrator;

    sget-object v1, Lcom/alipay/mobile/onsitepay/a/a/a;->f:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 653
    iget v5, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->F:I

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->showPayerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 654
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x384

    const/16 v3, 0x1f4

    const/16 v2, 0x12c

    const/16 v1, 0x96

    const/16 v0, 0x32

    .line 90
    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setInitData()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setLowData()I

    move-result v0

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_2

    if-gt p1, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setMiddleData()I

    move-result v0

    goto :goto_0

    :cond_2
    if-le p1, v2, :cond_3

    if-gt p1, v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setHighData()I

    move-result v0

    goto :goto_0

    :cond_3
    if-le p1, v3, :cond_4

    if-gt p1, v4, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setBetterData()I

    move-result v0

    goto :goto_0

    :cond_4
    if-le p1, v4, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->setSuperhData()I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->t:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->f()V

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;
    .locals 3
    .parameter

    .prologue
    .line 557
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aget-object v1, v1, v0

    .line 560
    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 564
    :goto_1
    return-object v0

    .line 557
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->A:Z

    return v0
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->y:Ljava/util/Map;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/onsitepay/c;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/e;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->f:Landroid/widget/LinearLayout;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 332
    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->m:Z

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->t:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    const/16 v1, 0x2710

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->x:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->startReceiveData(IILandroid/content/Context;Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;)Z

    .line 541
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->h()V

    .line 542
    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->g()V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 3

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->n:Z

    if-eqz v0, :cond_0

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->o:Z

    .line 832
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/onsitepay/payee/i;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :cond_0
    monitor-exit p0

    return-void

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static i()Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;
    .locals 2

    .prologue
    .line 920
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


# virtual methods
.method protected final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 190
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    .line 191
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aa:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->z:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->z:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->l:Z

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isNetworkAvailable = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->l:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->l:Z

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/onsitepay/f;->f:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c(Ljava/lang/String;)V

    .line 200
    iput-boolean v5, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->o:Z

    .line 202
    :cond_0
    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->t:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/onsitepay/payee/g;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/onsitepay/payee/g;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;->queryPhoneBlackList(Landroid/content/Context;Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;)V

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    sget v0, Lcom/alipay/mobile/onsitepay/d;->ae:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v3, v1

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    sget v0, Lcom/alipay/mobile/onsitepay/d;->af:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v5

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v3, 0x2

    sget v0, Lcom/alipay/mobile/onsitepay/d;->ag:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v3, 0x3

    sget v0, Lcom/alipay/mobile/onsitepay/d;->ah:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v3, 0x4

    sget v0, Lcom/alipay/mobile/onsitepay/d;->ai:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v3, 0x5

    sget v0, Lcom/alipay/mobile/onsitepay/d;->aj:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v3, 0x6

    sget v0, Lcom/alipay/mobile/onsitepay/d;->ak:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/4 v3, 0x7

    sget v0, Lcom/alipay/mobile/onsitepay/d;->al:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->w:[Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    const/16 v3, 0x8

    sget v0, Lcom/alipay/mobile/onsitepay/d;->am:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    aput-object v0, v1, v3

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/a;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v0, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    .line 214
    sget v0, Lcom/alipay/mobile/onsitepay/d;->F:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drawInductionLayout getWidth="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " drawInductionLayout getHeight="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->invalidate()V

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    new-instance v0, Lcom/alipay/mobile/onsitepay/a/b/a/f;

    invoke-direct {v0}, Lcom/alipay/mobile/onsitepay/a/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->D:Lcom/alipay/mobile/onsitepay/a/b/d;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->D:Lcom/alipay/mobile/onsitepay/a/b/d;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-string/jumbo v3, "com.alipay.longlink.TRANSFER_10000013"

    invoke-interface {v0, v1, v3, p0}, Lcom/alipay/mobile/onsitepay/a/b/d;->a(Lcom/alipay/mobile/framework/AlipayApplication;Ljava/lang/String;Lcom/alipay/mobile/onsitepay/a/b/a;)V

    .line 225
    new-instance v0, Lcom/alipay/mobile/onsitepay/a/b/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/a/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->B:Lcom/alipay/mobile/onsitepay/a/b/b;

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->B:Lcom/alipay/mobile/onsitepay/a/b/b;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/onsitepay/a/b/b;->a(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/a/b/a/d;-><init>(Lcom/alipay/mobile/onsitepay/a/b/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->C:Lcom/alipay/mobile/onsitepay/a/b/c;

    .line 231
    new-instance v0, Lcom/alipay/mobile/onsitepay/payee/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/payee/b;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void

    :cond_1
    move v0, v1

    .line 195
    goto/16 :goto_0
.end method

.method protected a(IZ)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 892
    if-eqz p2, :cond_0

    .line 893
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u6536\u5230\u652f\u4ed8\u8bf7\u6c42"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    iput p1, v0, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->row:I

    .line 898
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->invalidate()V

    .line 900
    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "\u58f0\u6ce2\u611f\u5e94\u533a"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    .locals 7
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 743
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c(Ljava/lang/String;)V

    .line 744
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$raw;->diaoqian:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 745
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->v:Landroid/os/Vibrator;

    sget-object v1, Lcom/alipay/mobile/onsitepay/a/a/a;->f:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 746
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->C:Lcom/alipay/mobile/onsitepay/a/b/c;

    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/onsitepay/a/b/c;->a(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->paySuccess()V

    .line 749
    return-void

    .line 744
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 265
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->i()Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->putCacheQrCodeData(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->i()Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V
    .locals 10
    .parameter
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/high16 v9, 0x41a0

    const/4 v8, 0x0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showUiView userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SecurityQrCodeShowResult= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "qrCodeShowRs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/utils/a;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)I

    move-result v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shareType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/d;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getQrCodeImgByteArr1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getQrCodeImgByteArr()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v7, -0xbdbdbe

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v6, v9, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 763
    if-eqz p1, :cond_1

    .line 764
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 765
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 766
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;

    .line 767
    if-eqz v0, :cond_0

    .line 768
    iget-object v3, v0, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->action:Ljava/lang/String;

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    const-string/jumbo v4, "soundWavePayPush"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    monitor-enter p0

    .line 774
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->C:Lcom/alipay/mobile/onsitepay/a/b/c;

    iget-object v4, v0, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->userId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/onsitepay/a/b/c;->a(Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;)V

    .line 777
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 784
    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
        delay = 0x258L
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/c;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 20
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 459
    const-string/jumbo v2, "n"

    .line 461
    :try_start_0
    new-instance v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoReq;

    invoke-direct {v3}, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoReq;-><init>()V

    .line 462
    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoReq;->dynamicId:Ljava/lang/String;

    .line 464
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v4, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-interface {v1, v3}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->sendPayeeInfo(Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoReq;)Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;

    move-result-object v3

    .line 468
    if-eqz v3, :cond_2

    iget-boolean v1, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->success:Z

    if-eqz v1, :cond_2

    .line 470
    const-string/jumbo v1, "y"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :try_start_1
    iget-object v2, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->payerUserId:Ljava/lang/String;

    .line 474
    iget-object v4, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->payerName:Ljava/lang/String;

    .line 475
    iget-object v5, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->payerHeadImageUrl:Ljava/lang/String;

    .line 476
    iget-boolean v6, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->payerIsOnline:Z

    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "userId ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    if-eqz v2, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->C:Lcom/alipay/mobile/onsitepay/a/b/c;

    iget-object v3, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->payerUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v3}, Lcom/alipay/mobile/onsitepay/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v1

    .line 502
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "kf"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "C2C"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "-"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "kf"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "verifywave"

    aput-object v17, v13, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v18, v14

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v16

    const/4 v14, 0x3

    aput-object v10, v13, v14

    const/4 v10, 0x4

    const-string/jumbo v14, "alipayclient"

    aput-object v14, v13, v10

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_2
    if-eqz v3, :cond_4

    .line 487
    :try_start_2
    iget-object v1, v3, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->resultDes:Ljava/lang/String;

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getPayUserInfo getSoundWavePayRpcFacade memo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c(Ljava/lang/String;)V

    move-object v10, v2

    goto :goto_1

    .line 493
    :cond_3
    const-string/jumbo v1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v10, v2

    .line 503
    goto :goto_1

    .line 498
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 499
    :goto_2
    const-string/jumbo v2, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->c(Ljava/lang/String;)V

    move-object v10, v1

    goto/16 :goto_1

    .line 498
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->f()V

    .line 536
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 6
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v1, v2

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-char v4, v3, v1

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_1

    const/16 v4, 0x20

    aput-char v4, v3, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-char v4, v3, v1

    const v5, 0xff00

    if-le v4, v5, :cond_0

    aget-char v4, v3, v1

    const v5, 0xff5f

    if-ge v4, v5, :cond_0

    aget-char v4, v3, v1

    const v5, 0xfee0

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 758
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 759
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 760
    return-void
.end method

.method protected d()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 739
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    .line 138
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 139
    const-string/jumbo v1, "10000013"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    .line 140
    const-string/jumbo v1, "10000013Home"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V

    .line 142
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->z:Landroid/net/ConnectivityManager;

    .line 144
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->v:Landroid/os/Vibrator;

    .line 145
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->i()Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;->getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->E:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->D:Lcom/alipay/mobile/onsitepay/a/b/d;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/a/b/d;->a()V

    .line 822
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->C:Lcom/alipay/mobile/onsitepay/a/b/c;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/a/b/c;->a()V

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->o:Z

    .line 824
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 825
    return-void

    .line 818
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;

    .line 177
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->A:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->t:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->C:Lcom/alipay/mobile/onsitepay/a/b/c;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/a/b/c;->a()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->o:Z

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 160
    const/16 v1, 0xa

    const-string/jumbo v2, "C2C_PAYEE"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->A:Z

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->x:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/alipay/mobile/onsitepay/payee/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/onsitepay/payee/h;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;B)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->x:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->g()V

    .line 170
    :cond_2
    return-void
.end method
