.class public final Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;
.super Lcom/alipay/mobile/android/main/publichome/PublicHomeView;
.source "PublicHomeView_.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->b:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->b:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->b:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->a:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->a:Landroid/content/Context;

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeAfterRemove(ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    return-void
.end method

.method static synthetic access$1001(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->queryPublicHomeFromRPC(Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->itemClick(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1101(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->startLoadData()V

    return-void
.end method

.method static synthetic access$1201(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->auth()V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->refreshPublichomeItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeTopOperation(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    return-void
.end method

.method static synthetic access$401(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->scrollToTop()V

    return-void
.end method

.method static synthetic access$501(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->reloadPublichomeList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$601(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->showProcessBarQuery()V

    return-void
.end method

.method static synthetic access$701(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeCancelTopOperate(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    return-void
.end method

.method static synthetic access$801(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->refreshFinished()V

    return-void
.end method

.method static synthetic access$901(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeRemoveOperate(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/alipay/mobile/android/main/publichome/PublicHomeView;
    .locals 1
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->onFinishInflate()V

    .line 99
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/alipay/mobile/android/main/publichome/PublicHomeView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->onFinishInflate()V

    .line 93
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/alipay/mobile/android/main/publichome/PublicHomeView;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->onFinishInflate()V

    .line 87
    return-object v0
.end method


# virtual methods
.method public final auth()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/android/main/publichome/f;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public final itemClick(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/g;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->b:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->b:Z

    .line 79
    sget v0, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->noFollowAccountBottom:Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->mPullRefreshContainer:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v0, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->publicHomeList:Landroid/widget/ListView;

    sget v0, Lcom/alipay/mobile/publicsvc/home/proguard/j/e;->t:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->emptyContainer:Landroid/widget/RelativeLayout;

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->onFinishInflate()V

    .line 82
    return-void
.end method

.method public final publicHomeAfterRemove(ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/b;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public final publicHomeCancelTopOperate(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/m;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/main/publichome/m;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public final publicHomeRemoveOperate(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/c;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/android/main/publichome/c;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public final publicHomeTopOperation(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/i;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/main/publichome/i;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public final queryPublicHomeFromRPC(Z)V
    .locals 1
    .parameter

    .prologue
    .line 244
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/android/main/publichome/d;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public final refreshFinished()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/main/publichome/n;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public final refreshPublichomeItems(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/main/publichome/h;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method public final reloadPublichomeList(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/k;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/main/publichome/k;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method public final scrollToTop()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/main/publichome/j;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method public final showProcessBarQuery()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/main/publichome/l;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method public final startLoadData()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/android/main/publichome/e;-><init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method
