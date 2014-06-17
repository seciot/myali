.class public Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/alipay/mobile/alipassapp/ui/common/p;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

.field private B:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

.field private c:Landroid/view/View;

.field private d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

.field private e:Lcom/alipay/mobile/alipassapp/biz/a;

.field private f:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:[Ljava/lang/String;

.field private n:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private o:Z

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private s:Lcom/alipay/mobile/alipassapp/ui/common/k;

.field private t:Z

.field private u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

.field private v:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

.field private w:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->h:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l:Z

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->o:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->t:Z

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->x:Z

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/f;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/h;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/h;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/i;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->E:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;Lcom/alipay/mobile/commonui/widget/APPopupWindow;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->e(Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getStatus()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    return-object v0
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x1

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_for_location:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->w:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/alipassapp/R$drawable;->delete:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/alipassapp/R$drawable;->alipass_detail_btn_more:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/c;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->w:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method private h()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    iget-boolean v2, v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->t:Z

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->t:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u67e5\u8be2\u8be6\u60c5DAO\u5f02\u5e38passId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic i(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    return-object v0
.end method

.method private i()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_is_deleted:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l()I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->u:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->t:Z

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic j(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->D:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private j()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/alipassapp/biz/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    invoke-static {p0, v2, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    :goto_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    :try_start_1
    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/common/a;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/biz/common/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getFormatVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "stamp"

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v7}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    invoke-static {p0, v2, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->E:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private k()V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->e(Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setPassBaseInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->x:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->setPassId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->B:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private l()I
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u67e5\u8be2\u8be6\u60c5DAO\u5f02\u5e38passId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->C:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private static m()Ljava/lang/String;
    .locals 2

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

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic n(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->h:Z

    return v0
.end method

.method static synthetic q(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l:Z

    return v0
.end method

.method static synthetic r(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/d;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/e;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/service/g;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "pass_offline_data"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    .locals 13
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->dismissProgressDialog()V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->alipass_access_deny:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setBizType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->partnerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getFormatVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "stamp"

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->z:J

    sub-long v3, v0, v3

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5361\u5238\u8be6\u60c5AlipassDetailActivity\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "perf_open_passinfodetail"

    const-string/jumbo v10, "s"

    const-string/jumbo v11, "c"

    const/4 v5, 0x4

    new-array v12, v5, [Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v12, v9

    const/4 v5, 0x1

    const-string/jumbo v9, ""

    aput-object v9, v12, v5

    const/4 v5, 0x2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v5

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v9, v2

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "1504"

    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "1509"

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v0, "\u6b63\u5728\u5220\u9664"

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e:Lcom/alipay/mobile/alipassapp/biz/a;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v2, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {p0, v2, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e:Lcom/alipay/mobile/alipassapp/biz/a;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;ZZ)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k:Z

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v0, v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->e(Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getGmtModified()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setGmtModified(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setPassId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setPassBaseInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->t:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->s:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/common/rpc/RpcException;)Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method b()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v0, "\u6b63\u5728\u5220\u9664"

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-boolean v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteOfflineAlipass "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, "\u6b63\u5728\u5220\u9664"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Ljava/lang/String;)Z

    move-result v2

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-boolean v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteAlipass "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.intent.action.UPDATETODOLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method d()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;->setPassId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;)V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i()V

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "TRAVEL"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000021"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "travelItineraryDetails"

    const-string/jumbo v5, "backIcon"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "isNeedRefresh"

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->x:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->finish()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->z:J

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->main_alipass_detail:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->details_pull_refresh_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/b;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->alipass_detail_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, p0, v0, v2, p0}, Lcom/alipay/mobile/alipassapp/ui/common/k;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/ui/common/p;)V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->s:Lcom/alipay/mobile/alipassapp/ui/common/k;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e:Lcom/alipay/mobile/alipassapp/biz/a;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->B:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->B:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "cache_version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "b"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pass_is_cacheable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->k:Z

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pass_is_offline"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l:Z

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_invalid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->h:Z

    iget-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->l:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pass_offline_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->m:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g:Ljava/lang/String;

    const-string/jumbo v1, "b"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "TRAVEL"

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->i()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    const-string/jumbo v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "COUPON"

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->B:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->closePayBridge()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onPause()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->init(Landroid/content/Context;Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->A:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onResume()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method
