'''
    defines the views for the payment app
'''
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.http import JsonResponse
import braintree

gateway = braintree.BraintreeGateway(
  braintree.Configuration(
    environment=braintree.Environment.Sandbox,
    merchant_id='zntjh9jq8szdtv28',
    public_key='bh453nrfq62qs7gm',
    private_key='2546165d0efacfeecb1053b3ea230b38'
  )
)

@api_view(["GET"])
def generate_token(request):
    '''
        generates client token
    '''
    client_token = gateway.client_token.generate()
    print ("client token : ",client_token)
    return JsonResponse({'clientToken' : client_token,'success':True})

@api_view(["POST"])
def process_payment(request):
    '''
        processes payment on receiving nonce and amount and returns transaction id and amount
    '''
    nonce_from_the_client = request.POST['paymentMethodNonce']
    amount_from_the_client = request.POST['amount']

    result = gateway.transaction.sale({
        'amount':amount_from_the_client,
        'payment_method_nonce':nonce_from_the_client,
        'options':{
             'submit_for_settlement': True
        }
    })

    if result.is_success :
        return Response({
            'success':result.is_success,
            'transaction':{'id':result.transaction.id,'amount':result.transaction.amount}
        })

    else:
        return Response({'error':True})
