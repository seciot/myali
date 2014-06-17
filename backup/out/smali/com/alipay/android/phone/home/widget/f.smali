.class final Lcom/alipay/android/phone/home/widget/f;
.super Ljava/lang/Object;
.source "ActiveTopBoardContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/f;->a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/f;->a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    #getter for: Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->n:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$800(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 549
    return-void
.end method
