.class final Lcom/alipay/mobile/android/main/publichome/j;
.super Ljava/lang/Object;
.source "PublicHomeView_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/j;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/j;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->scrollToTop()V
    invoke-static {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$401(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    .line 166
    return-void
.end method
