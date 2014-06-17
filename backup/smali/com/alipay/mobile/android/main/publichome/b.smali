.class final Lcom/alipay/mobile/android/main/publichome/b;
.super Ljava/lang/Object;
.source "PublicHomeView_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

.field final synthetic c:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/b;->c:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iput-boolean p2, p0, Lcom/alipay/mobile/android/main/publichome/b;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/android/main/publichome/b;->b:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/b;->c:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-boolean v1, p0, Lcom/alipay/mobile/android/main/publichome/b;->a:Z

    iget-object v2, p0, Lcom/alipay/mobile/android/main/publichome/b;->b:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeAfterRemove(ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$001(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;ZLcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    .line 110
    return-void
.end method
