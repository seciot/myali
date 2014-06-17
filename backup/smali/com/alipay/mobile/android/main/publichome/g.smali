.class final Lcom/alipay/mobile/android/main/publichome/g;
.super Ljava/lang/Object;
.source "PublicHomeView_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/g;->c:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/g;->a:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    iput-object p3, p0, Lcom/alipay/mobile/android/main/publichome/g;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/g;->c:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/g;->a:Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    iget-object v2, p0, Lcom/alipay/mobile/android/main/publichome/g;->b:Landroid/view/View;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->itemClick(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$101(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;Landroid/view/View;)V

    .line 124
    return-void
.end method
