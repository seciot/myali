.class final Lcom/alipay/mobile/android/main/publichome/n;
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
    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/n;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/n;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->refreshFinished()V
    invoke-static {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$801(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    .line 222
    return-void
.end method
