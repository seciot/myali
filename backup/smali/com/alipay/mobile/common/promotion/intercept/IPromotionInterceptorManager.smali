.class public interface abstract Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addInterceptorByGroupKey(Ljava/lang/String;Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;)Z
.end method

.method public abstract addInterceptorWithRpc(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract clear()V
.end method

.method public abstract currentActivityHasInterceptor()Z
.end method

.method public abstract getOnClickListenerProxy(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
.end method

.method public abstract getTriggerView()Landroid/view/View;
.end method

.method public abstract isEnable()Z
.end method

.method public abstract match([Ljava/lang/Object;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;
.end method

.method public abstract removeInterceptor(Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;)V
.end method

.method public abstract removeInterceptorWithRpc(Ljava/lang/String;)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setTriggerView(Landroid/view/View;)V
.end method
