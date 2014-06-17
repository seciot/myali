.class final Lcom/alipay/android/phone/home/widget/e;
.super Ljava/lang/Object;
.source "ActiveTopBoardContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/e;->a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    invoke-static {}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on top tips Click"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->access$700()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/e;->a:Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/ActiveTopBoardContainer;->changeState(I)V

    .line 279
    :cond_0
    return-void
.end method
