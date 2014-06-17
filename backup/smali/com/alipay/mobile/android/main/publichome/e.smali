.class final Lcom/alipay/mobile/android/main/publichome/e;
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
    .line 258
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/e;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/e;->a:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->startLoadData()V
    invoke-static {v0}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$1101(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;)V

    .line 264
    return-void
.end method
