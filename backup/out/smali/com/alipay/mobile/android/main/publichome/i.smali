.class final Lcom/alipay/mobile/android/main/publichome/i;
.super Ljava/lang/Object;
.source "PublicHomeView_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

.field final synthetic b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/i;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/i;->a:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/i;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/i;->a:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->publicHomeTopOperation(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$301(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;)V

    .line 152
    return-void
.end method
