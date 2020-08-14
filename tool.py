 # Upload the data and the report
result_path = '/SDKTest/Output/result.csv'

def run(context):
    
    context.set_progress(message='Uploading results...')

    context.upload_file(result_path, 'result.csv')
