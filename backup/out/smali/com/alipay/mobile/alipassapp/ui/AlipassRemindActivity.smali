.class public Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/alipay/mobile/alipassapp/ui/common/p;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private f:Landroid/app/AlertDialog;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobile/alipassapp/biz/a;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Z

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Lcom/alipay/mobile/commonui/widget/APButton;

.field private q:Ljava/util/Date;

.field private r:Ljava/util/Date;

.field private s:Lcom/alipay/mobile/alipassapp/ui/common/k;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/Calendar;

.field private v:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->u:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->f:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/kabaoprod/core/model/model/RemindInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->u:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->b(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    return-void
.end method

.method private a(J)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getSysdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-gtz v1, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cs;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/cs;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(J)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUpThanSysdate(sysdate,newRemindDate):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    const-string/jumbo v1, "TRAVEL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->g:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSet()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->r:Ljava/util/Date;

    if-nez v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->h:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSwitch()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    const-string/jumbo v2, "TRAVEL"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSet()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->m:J

    sub-long v1, v0, v2

    new-instance v0, Ljava/util/Date;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0xe10

    mul-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    sub-long v1, v3, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->r:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    const-string/jumbo v2, "COUPON"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->f:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->r:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->u:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, "\u52a0\u8f7d\u4e2d"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->k:Lcom/alipay/mobile/alipassapp/biz/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->s:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/common/rpc/RpcException;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0
.end method

.method public a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;)V
    .locals 18
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->dismissProgressDialog()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;->success:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;->getInfo()Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSupportTime()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSet()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->m:J

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getSysdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->r:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->u:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSwitch()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget-object v3, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->TOGGLE_BUTTON:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getChildView(Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    if-eqz v2, :cond_3

    const/16 v2, 0x11

    :goto_3
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/co;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alipay/mobile/alipassapp/ui/co;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->i:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->b(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/cp;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alipay/mobile/alipassapp/ui/cp;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/cn;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alipay/mobile/alipassapp/ui/cn;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->v:J

    sub-long v14, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u63d0\u9192AlipassRemindActivity\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->v:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "perf_open_passnotifyremind"

    const/4 v10, 0x0

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v16

    const/4 v14, 0x3

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0x10

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;->success:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->simple_toast_ok:I

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_remind_save_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ct;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/ct;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->v:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5361\u5238\u63d0\u9192\u8bbe\u7f6e\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->v:J

    return-void
.end method

.method public a(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->v:J

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    const-string/jumbo v2, "TRAVEL"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u4fdd\u5b58\u4e2d"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->k:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getPassId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSwitch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSet()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    const-string/jumbo v2, "COUPON"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4fdd\u5b58\u4e2d"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->k:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getPassId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/core/model/model/RemindInfo;->getRemindSwitch()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->q:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V

    throw v0
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->v:J

    sget v0, Lcom/alipay/mobile/alipassapp/R$layout;->main_alipass_remind:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->setContentView(I)V

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/k;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_viewgroup:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v2, p0, v0, v3, p0}, Lcom/alipay/mobile/alipassapp/ui/common/k;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/ui/common/p;)V

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->s:Lcom/alipay/mobile/alipassapp/ui/common/k;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_remind_alt_switch:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_remind_alt_time:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->btn_remind_save:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->k:Lcom/alipay/mobile/alipassapp/biz/a;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->n:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->n:Z

    if-nez v0, :cond_1

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_remind_push_not_open:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/PushSettingService;->getPushState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_alt_tv1:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_alt_tv2:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->b:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_remind_alt_msg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->travel_remind_alt_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->travel_remind_alt_msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pass_enddate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->j:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "b"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->t:Ljava/lang/String;

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->coupon_remind_opt_set:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setLeftText(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a()V

    goto/16 :goto_1
.end method
