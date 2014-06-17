.class final Lcom/alipay/android/phone/home/ui/n;
.super Ljava/lang/Object;
.source "HeaderAreaLayout.java"

# interfaces
.implements Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;


# instance fields
.field final a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    .line 517
    new-instance v0, Lcom/alipay/android/phone/home/ui/o;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/o;-><init>(Lcom/alipay/android/phone/home/ui/n;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->a:Ljava/lang/Runnable;

    .line 396
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    .line 400
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    return v0
.end method

.method public final changeState(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    :try_start_0
    iput p1, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    .line 511
    :goto_1
    return-void

    .line 440
    :pswitch_0
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-ne v1, v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->h(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 445
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-ne v2, v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a()V

    goto :goto_0

    .line 450
    :cond_2
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->dismiss()V

    goto :goto_0

    .line 458
    :pswitch_1
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-ne v1, v0, :cond_4

    .line 460
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->hide()V

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 464
    :cond_4
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-ne v2, v0, :cond_5

    .line 466
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a()V

    goto/16 :goto_0

    .line 469
    :cond_5
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 474
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->b()V

    .line 475
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->c()V

    .line 476
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-ne v1, v0, :cond_6

    .line 477
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->getBottom()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(IZ)V

    goto/16 :goto_0

    .line 478
    :cond_6
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-ne v2, v0, :cond_7

    .line 479
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(IZ)V

    .line 480
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 481
    :cond_7
    iget v0, p0, Lcom/alipay/android/phone/home/ui/n;->c:I

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_8

    .line 484
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 485
    if-nez v0, :cond_9

    .line 486
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->e(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v2}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 493
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->j(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->getBottom()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(IZ)V

    goto/16 :goto_0

    .line 490
    :cond_9
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 491
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->e(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public final setOnBoardCLickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Landroid/view/View$OnClickListener;)V

    .line 427
    :cond_0
    return-void
.end method

.method public final setOnStateChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V

    .line 419
    :cond_0
    return-void
.end method

.method public final setOnVisibleChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->m(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/widget/NFDFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/widget/NFDFrameLayout;->addOnVisibleChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;)V

    .line 412
    return-void
.end method

.method public final updateTopInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/n;->b:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->l(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/home/dialog/NfdPanelDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method
